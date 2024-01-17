import 'package:flutter/material.dart';

class RakeDetails extends StatelessWidget {
  const RakeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color:Color.fromARGB(255, 63, 63, 63),
              child: Center(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("BPC Report", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.w800, letterSpacing: 1),),
              ))
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [ 
                    ExpansionTile(
                    title:Text('Rake Details',
                    style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    RakeDetailsCard(),
                    ]
                ),
                    ExpansionTile(
                    title:Text('Rake Consists',
                    style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                      
                    children:<Widget>[
                    RakeConsistsCard(),
                    ]
                ),

                    ExpansionTile(
                      title:Text('Arrival Remark',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    ArrivalRemarkCard()
                    ]
                ),
                 
                     ExpansionTile(
                     title:Text('Arrival/ Enroute',
                     style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    ArrivalEnrouteCard(),
                    ]
                ),
                    
                  ExpansionTile(
                      title:Text('OMRS Alerts',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                     OmrsAlertCard2(),
                    ]
                ),
                   
                ExpansionTile(
                      title:Text('Rail Madad',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                     RailMadadCard()
                    ]
                ),
                    
                ExpansionTile(
                      title:Text('Schedule Defects',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    ScheduleDefectsCard(),
                    ]
                ),

                ExpansionTile(
                      title:Text('Assembly Defects',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    AssemblyDefectsCard(),
                    ]
                ),

                ExpansionTile(
                      title:Text('Resources',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    ResourcesCard(),
                    ]
                ),

                   ExpansionTile(
                      title:Text('Other details',
                      style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     color: Colors.black,
                     ),),
                    children:<Widget>[
                    OtherCard(),
                    ]
                )

                  ],
                ),
              ),
            ),
          ],
        ),
      
      ),
    );
  }
}

class RakeDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6),
              DataTable( columnSpacing: 150.0, 
                columns: [
                   DataColumn(label: Text('Rake', style: TextStyle(fontWeight: FontWeight.w800))),
                  DataColumn(label: Text('Placement Time', style: TextStyle(fontWeight: FontWeight.w800),)),
                  DataColumn(label: Text('Rake Release Time', style: TextStyle(fontWeight: FontWeight.w800),)),
                  DataColumn(label: Text('Maintenance Date', style: TextStyle(fontWeight: FontWeight.w800))),
                  DataColumn(label: Text('Total Examination Time', style: TextStyle(fontWeight: FontWeight.w800),)),
                  DataColumn(label: Text('Line No', style: TextStyle(fontWeight: FontWeight.w800),)),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Rake-1')),
                    DataCell(Text('15.01.2024 16:00')),
                    DataCell(Text('15.01.2024 20:00')),
                    DataCell(Text('15.01.2024')),
                    DataCell(Text('2 hours')),
                    DataCell(Text('WL-3')),
                    
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}

class DetailField extends StatelessWidget {
  final String title;
  final String value;

  DetailField({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class RakeConsistsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: 6),
                DataTable(columnSpacing: 300.0,
                  columns: [
                    DataColumn(label: Text('Coach', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Schedule Done', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('No. Of Issues', style: TextStyle(fontWeight: FontWeight.w800))),
                    
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('SWR-DTC-235568')),
                      DataCell(Text('Daily')),
                      DataCell(Text('1')),
                      
                    ]),
                    DataRow(cells: [
                      DataCell(Text('SWR-DTC-235568')),
                      DataCell(Text('Daily')),
                      DataCell(Text('2')),
                      
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ArrivalRemarkCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: 10),
                DataTable(columnSpacing: 150.0,
                  columns: [
                    DataColumn(label: Text('Type', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Source', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Remark', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action by', style: TextStyle(fontWeight: FontWeight.w800))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Instruction')),
                      DataCell(Text('Div Ctrl')),
                      DataCell(Text('Attention required')),
                      DataCell(Text('Example Action')),
                      DataCell(Text('John Doe')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Type')),
                      DataCell(Text('Source B')),
                      DataCell(Text('Another Remark')),
                      DataCell(Text('Another Action')),
                      DataCell(Text('Jane Doe')),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ArrivalEnrouteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 10),
                DataTable(columnSpacing: 90.0,
                  columns: [
                    DataColumn(label: Text('Sno', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Coach', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Defect Detail', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Position in Coach', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Location', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action Taken', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Status', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action Time', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Remarks', style: TextStyle(fontWeight: FontWeight.w800))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1.')),
                      DataCell(Text('SWR-DTC-235569')),
                      DataCell(Text('Tap Leakage')),
                      DataCell(Text('Toilet-1')),
                      DataCell(Text('Enroute')),
                      DataCell(Text('Attended')),
                      DataCell(Text('Close')),
                      DataCell(Text('15.01.2024 16:30')),
                      DataCell(Text('Tap changed.')),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OmrsAlertCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Expanded(
                  child: DataTable(
                    columnSpacing: 70.0,
                    
                    columns: [
                      DataColumn(label: Text('Sno.', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Coach', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Alert Type', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Location', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Alert Date', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Alert Level', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Observations', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Problem Observed?', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Examination Observation', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Action', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('if Sick', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Reason of Action', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Action Time', style: TextStyle(fontWeight: FontWeight.w800))),
                      DataColumn(label: Text('Status', style: TextStyle(fontWeight: FontWeight.w800))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('1.',)),
                        DataCell(Text('SWR-DTC-235570')),
                        DataCell(Text('Wheel Alert')),
                        DataCell(Text('Bantara Down')),
                        DataCell(Text('14.01.2024 11:30')),
                        DataCell(Text('Medium')),
                        DataCell(
                          Text(
                            '1. Wheel Noise Detected (Arrival at 15.01.2024 15:20)\n2. Wheel Problem found (Enroute at 15.01.2024 11:45)',
                          ),
                        ),
                        DataCell(Text('Y')),
                        DataCell(Text('Problem found')),
                        DataCell(Text('Sick Marked')),
                        DataCell(Text('Y (SickMaint ID - 526)')),
                        DataCell(Text('Safety issue')),
                        DataCell(Text('15.01.2024 18:30')),
                        DataCell(Text('Closed')),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RailMadadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(height: 10),
                DataTable(
                  columnSpacing: 100.0, // Adjust as needed
                  columns: [
                    DataColumn(label: Text('Sno.', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Coach', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Complaint Type', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Sub Type', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Passenger Remark', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Complaint Date', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action Taken', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Status', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action Remark', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action Time', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action At', style: TextStyle(fontWeight: FontWeight.w800))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1.')),
                      DataCell(Text('SWR-DTC-235570')),
                      DataCell(Text('Electrical Equipment')),
                      DataCell(Text('Air Conditioner')),
                      DataCell(Text('Not Cooling')),
                      DataCell(Text('14.01.2024 11:56')),
                      DataCell(Text('Rectified')),
                      DataCell(Text('Closed')),
                      DataCell(Text('Cooling checked and improved')),
                      DataCell(Text('15.01.2024 14:00')),
                      DataCell(Text('ghfd')),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScheduleDefectsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             SizedBox(height: 10),
                DataTable(columnSpacing: 120.0,
                  columns: [
                    DataColumn(label: Text('Coach', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Assembly', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Sub Assembly', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Task Name', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Problem', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Sick Maint. Id', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Status', style: TextStyle(fontWeight: FontWeight.w800))),
                    

                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('SWR-DTC-235568')),
                      DataCell(Text('Boggie')),
                      DataCell(Text('Boggie Frame')),
                      DataCell(Text('Visual Inspection')),
                      DataCell(Text('Problem Found')),
                      DataCell(Text('526')),
                      DataCell(Text('closed')),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('SWR-DTC-235568')),
                      DataCell(Text('Boggie')),
                      DataCell(Text('Boggie Frame')),
                      DataCell(Text('Visual Inspection')),
                      DataCell(Text('Problem Found')),
                      DataCell(Text('527')),
                      DataCell(Text('pending')),

                      
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class AssemblyDefectsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(height: 10),
                DataTable(columnSpacing: 100.0,
                  columns: [
                    DataColumn(label: Text('Sick Maint. Id', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Coach', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Assembly', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Problem', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('P. Description', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Sick Date Time', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Fit Time', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action By', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Action Remark', style: TextStyle(fontWeight: FontWeight.w800))),
                    
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('526')),
                      DataCell(Text('SWR-DTC-235568')),
                      DataCell(Text('Wheel - 1')),
                      DataCell(Text('Cracked')),
                      DataCell(Text('Crack found')),
                      DataCell(Text('15.01.2024 16:00')),
                      DataCell(Text('Repaired')),
                      DataCell(Text('15.01.2024 20:00')),
                      DataCell(Text('John')),
                       DataCell(Text('Welding done')),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('526')),
                      DataCell(Text('SWR-DTC-235578')),
                      DataCell(Text('Wheel - 4')),
                      DataCell(Text('Cracked')),
                      DataCell(Text('Crack found')),
                      DataCell(Text('15.01.2024 16:00')),
                      DataCell(Text('Repaired')),
                      DataCell(Text('15.01.2024 20:00')),
                      DataCell(Text('Mary')),
                       DataCell(Text('Welding done')),
                      
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ResourcesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     width:double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shadowColor: Color.fromARGB(255, 63, 63, 63),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                SizedBox(height: 10),
                Text('Man Power',style: TextStyle(fontSize: 19,),
                ),
              
                DataTable(  columnSpacing: 150.0,
                  columns: [
                    
                    DataColumn(label: Text('Hrms Id', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Name', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Hours', style: TextStyle(fontWeight: FontWeight.w800))),
                  
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('mdnfbs493')),
                      DataCell(Text('A')),
                      DataCell(Text('5:00 Hrs')),
                     ]),

                    DataRow(cells: [
                      DataCell(Text('asfbs123')),
                      DataCell(Text('B')),
                      DataCell(Text('3:00 Hrs')),
                    ]),
                  ],
                ),
                SizedBox(height: 10),

               Text('Material',style: TextStyle(
                    fontSize: 19,),
                ),
                
                DataTable( columnSpacing: 250.0,
                  columns: [
                    DataColumn(label: Text('PI No.', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Quantity', style: TextStyle(fontWeight: FontWeight.w800),)),
                    
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('654')),
                      DataCell(Text('4')),
                      ]),

                    DataRow(cells: [
                      DataCell(Text('6543')),
                      DataCell(Text('2')),
                      ]),
                  ],
                ),

                SizedBox(height: 10),
               Text('Machine',style: TextStyle(
                    fontSize: 19,),
                ),
                
                DataTable( columnSpacing: 250.0,
                  columns: [
                    DataColumn(label: Text('Asset No.', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Hours', style: TextStyle(fontWeight: FontWeight.w800),)),
                    
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('654')),
                      DataCell(Text('3:00 Hrs')),
                      ]),

                    DataRow(cells: [
                      DataCell(Text('6543')),
                      DataCell(Text('6:00 Hrs')),
                      ]),
                  ],
                ),
                
              ],
            ),
            
          ),
        ),
        
      ),
    );
  }
}

class OtherCard extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Container(
     width:double.infinity,
      margin: EdgeInsets.all(20),
    child:Card(
      shadowColor: Color.fromARGB(255, 63, 63, 63),
      color: Colors.white,
      margin: EdgeInsets.all(20),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 10),
           DataTable(columnSpacing: 300.0,
                  columns: [
                    DataColumn(label: Text('BPC No.', style: TextStyle(fontWeight: FontWeight.w800))),
                    DataColumn(label: Text('Train No', style: TextStyle(fontWeight: FontWeight.w800),)),
                    DataColumn(label: Text('Start Date', style: TextStyle(fontWeight: FontWeight.w800),)),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('7654')),
                      DataCell(Text('8765433')),
                       DataCell(Text('15.01.2024 16:00')),
                      ]),
                  ],
                ),
        ],
      ),
    ),
    ),
    ),
    );
  }
}

