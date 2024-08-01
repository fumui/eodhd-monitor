import 'package:eodhd_monitor/eodhd/eodhd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoTickerTable extends StatelessWidget {
  const CryptoTickerTable({super.key});

  @override
  Widget build(BuildContext context) {
    final etcusdLast = context.select((CryptoTickerBloc bloc) => bloc.state.ETHUSDTickers.last);
    final btcusdLast = context.select((CryptoTickerBloc bloc) => bloc.state.BTCUSDTickers.last);
    final tableData = [etcusdLast, btcusdLast];
    return ListView(
      children: <Widget>[
        PaginatedDataTable(
          rowsPerPage: tableData.length,
          columnSpacing: 16,
          columns: const <DataColumn>[
            DataColumn(label: Text('Symbol')),
            DataColumn(label: Text('Last')),
            DataColumn(label: Text('Chg')),
            DataColumn(label: Text('Chg%')),
          ],
          source: _DataSource(tableData: tableData),
        ),
      ],
    );
  }
}

class _DataSource extends DataTableSource {
  final List<CryptoTicker> tableData;
  _DataSource({required this.tableData});

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= tableData.length) return null;
    final row = tableData[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(row.tickerCode)),
        DataCell(Text(row.lastPrice)),
        DataCell(Text(row.dailyDifference)),
        DataCell(Text(row.dailyChangePercentage)),
      ],
    );
  }

  @override
  int get rowCount => tableData.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
