import 'package:flutter/material.dart';
import 'package:hospital/layout/labdraw.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';
class phcnw extends StatefulWidget {
  const phcnw({Key? key}) : super(key: key);

  @override
  State<phcnw> createState() => _phcnwState();
}

class _phcnwState extends State<phcnw> {
  late TextEditingController name,age,ag_ratio,alakine_phos,albumin,albumin1,bacteria,basophil,bile_pigment,bile_salt,casts,crystal,dbilirubin,dc_neutrophil,dengue,eosinophil,epithelial,esr,fbs,globulin,hba1c,hbsag,hdl,heamoglobin,hiv,lab_reportcol,ldl,lgg1gm,lymphocyte,malarial_parasite,microscopy,monocyte,ns1ag,platelet_count,potassium,ppbs,pusceils,rbcs,rbs,rdt,screat,sex,sgot,sgpt,lb_id,sodium,sputum,stool,sugar,suricacid,t_cholestrol,tbirirubin,total_wbc_count,tprotien,triglycerides,urea,vldl,uid;

  void initState(){
    name=TextEditingController();
    age=TextEditingController();
    ag_ratio=TextEditingController();
    alakine_phos=TextEditingController();
    albumin=TextEditingController();
    bacteria=TextEditingController();
    basophil=TextEditingController();
    bile_pigment=TextEditingController();
    bile_salt=TextEditingController();
    casts=TextEditingController();
    crystal=TextEditingController();
    dbilirubin=TextEditingController();
    dc_neutrophil=TextEditingController();
    dengue=TextEditingController();
    eosinophil=TextEditingController();
    epithelial=TextEditingController();
    esr=TextEditingController();
    fbs=TextEditingController();
    globulin=TextEditingController();
    hba1c=TextEditingController();
    hbsag=TextEditingController();
    hdl=TextEditingController();
    heamoglobin=TextEditingController();
    hiv=TextEditingController();
    lab_reportcol=TextEditingController();
    ldl=TextEditingController();
    lgg1gm=TextEditingController();
    lymphocyte=TextEditingController();
    malarial_parasite=TextEditingController();
    microscopy=TextEditingController();
    monocyte=TextEditingController();
    ns1ag=TextEditingController();
    platelet_count=TextEditingController();
    potassium=TextEditingController();
    ppbs=TextEditingController();
    pusceils=TextEditingController();
    rbcs=TextEditingController();
    rbs=TextEditingController();
    rdt=TextEditingController();
    screat=TextEditingController();
    sex=TextEditingController();
    sgot=TextEditingController();
    sgpt=TextEditingController();
    sodium=TextEditingController();
    sputum=TextEditingController();
    stool=TextEditingController();
    sugar=TextEditingController();
    suricacid=TextEditingController();
    t_cholestrol=TextEditingController();
    tbirirubin=TextEditingController();
    total_wbc_count=TextEditingController();
    tprotien=TextEditingController();
    triglycerides=TextEditingController();
    urea=TextEditingController();
    vldl=TextEditingController();
    uid=TextEditingController();
    albumin1=TextEditingController();
    super.initState();

  }

  void postdata() async {
    String url = login.url+"patient_lab/lab/";
    var resp = await post(url, body: {
      "name": name.text.toString(),
      "age":age.text.toString(),
      "ag_ratio":ag_ratio.text.toString(),
      "alakine_phos":alakine_phos.text.toString(),
      "albumin":albumin.text.toString(),
      "bacteria":bacteria.text.toString(),
      "basophil":basophil.text.toString(),
      "bile_pigment":bile_pigment.text.toString(),
      "bile_salt":bile_salt.text.toString(),
      "casts":casts.text.toString(),
      "crystal":crystal.text.toString(),
      "dbilirubin":dbilirubin.text.toString(),
      "dc_neutrophil":dc_neutrophil.text.toString(),
      "dengue":dengue.text.toString(),
      "eosinophil":eosinophil.text.toString(),
      "epithelial":epithelial.text.toString(),
      "esr":esr.text.toString(),
      "fbs":fbs.text.toString(),
      "globulin":globulin.text.toString(),
      "hba1c":hba1c.text.toString(),
      "hbsag":hbsag.text.toString(),
      "hdl":hdl.text.toString(),
      "heamoglobin":heamoglobin.text.toString(),
      "hiv":hiv.text.toString(),
      "lab_reportcol":lab_reportcol.text.toString(),
      "ldl":ldl.text.toString(),
      "lgg1gm":lgg1gm.text.toString(),
      "lymphocyte":lymphocyte.text.toString(),
      "malarial_parasite":malarial_parasite.text.toString(),
      "microscopy":microscopy.text.toString(),
      "monocyte":monocyte.text.toString(),
      "ns1ag":ns1ag.text.toString(),
      "platelet_count":platelet_count.text.toString(),
      "potassium":potassium.text.toString(),
      "ppbs":ppbs.text.toString(),
      "pusceils":pusceils.text.toString(),
      "rbcs":rbcs.text.toString(),
      "rbs":rbs.text.toString(),
      "rdt":rdt.text.toString(),
      "screat":screat.text.toString(),
      "sex":sex.text.toString(),
      "sgot":sgot.text.toString(),
      "sgpt":sgpt.text.toString(),
      "sodium":sodium.text.toString(),
      "sputum":sputum.text.toString(),
      "stool":stool.text.toString(),
      "sugar":sugar.text.toString(),
      "suricacid":suricacid.text.toString(),
      "t_cholestrol":t_cholestrol.text.toString(),
      "tbirirubin":tbirirubin.text.toString(),
      "total_wbc_count":total_wbc_count.text.toString(),
      "tprotien":tprotien.text.toString(),
      "triglycerides":triglycerides.text.toString(),
      "urea":urea.text.toString(),
      "vldl":vldl.text.toString(),
      "uid":uid.text.toString(),
      "alb1":albumin1.text.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Lab Report"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        labelText: 'PATIENT NAME',
                        hintText: "Name",
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: uid,
                    decoration: InputDecoration(
                        labelText: 'user id',
                        hintText: "user id",
                        prefixIcon: Icon(Icons.drive_file_rename_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: age,
                    decoration: InputDecoration(
                        labelText: 'AGE',
                        hintText: "Age",
                        prefixIcon: Icon(Icons.numbers),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: sex,
                    decoration: InputDecoration(
                        labelText: 'SEX',
                        hintText: "sex",
                        prefixIcon: Icon(Icons.male),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20),


                Container(
                  alignment: Alignment.topCenter,
                  child: Text("HAEMATOLOGY"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: heamoglobin,
                    decoration: InputDecoration(
                        labelText: 'Haemoglobin',
                        hintText: "Haemoglobin",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: total_wbc_count,
                    decoration: InputDecoration(
                        labelText: 'Total WBC Count',
                        hintText: "Total WBC Count",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: dc_neutrophil,
                    decoration: InputDecoration(
                        labelText: 'DC Neutrophil',
                        hintText: "DC Neutrophil",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: lymphocyte,
                    decoration: InputDecoration(
                        labelText: 'Lymphocyte',
                        hintText: "Lymphocyte",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: eosinophil,
                    decoration: InputDecoration(
                        labelText: 'Eosinophil',
                        hintText: "Eosinophil",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: basophil,
                    decoration: InputDecoration(
                        labelText: 'Basophil',
                        hintText: "Basophil",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: monocyte,
                    decoration: InputDecoration(
                        labelText: 'Monocyte',
                        hintText: "Monocyte",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: esr,
                    decoration: InputDecoration(
                        labelText: 'ESR',
                        hintText: "ESR",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                  child: TextFormField(
                    controller: platelet_count,
                    decoration: InputDecoration(
                        labelText: 'Platelet count',
                        hintText: "Platelet count",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text("PARASITOLOGY"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                  child: TextFormField(
                    controller: malarial_parasite,
                    decoration: InputDecoration(
                        labelText: 'Malarial Parasite',
                        hintText: "Malarial Parasite",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text("URINE"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: albumin,
                    decoration: InputDecoration(
                        labelText: 'Albumin',
                        hintText: "Albumin",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: sugar,
                    decoration: InputDecoration(
                        labelText: 'Sugar',
                        hintText: "Sugar",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: microscopy,
                    decoration: InputDecoration(
                        labelText: 'Microscopy',
                        hintText: "Microscopy",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: pusceils,
                    decoration: InputDecoration(
                        labelText: 'Puscells',
                        hintText: "Puscells",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                  child: TextFormField(
                    controller: rbcs,
                    decoration: InputDecoration(
                        labelText: 'RBC s',
                        hintText: "RBC s",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text("BIOCHEMISTRY"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: fbs,
                    decoration: InputDecoration(
                        labelText: 'FBS',
                        hintText: "FBS",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: rbs,
                    decoration: InputDecoration(
                        labelText: 'RBS',
                        hintText: "RBS",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: ppbs,
                    decoration: InputDecoration(
                        labelText: 'PPBS',
                        hintText: "PPBS",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                  child: TextFormField(
                    controller: hba1c,
                    decoration: InputDecoration(
                        labelText: 'HbA1c',
                        hintText: "HbA1c",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text("LIPID PROFILE"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: t_cholestrol,
                    decoration: InputDecoration(
                        labelText: 'T.Cholestrol',
                        hintText: "T.Cholestrol",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: triglycerides,
                    decoration: InputDecoration(
                        labelText: 'T.riglycerides',
                        hintText: "T.riglycerides",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: hdl,
                    decoration: InputDecoration(
                        labelText: 'HDL',
                        hintText: "HDL",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: ldl,
                    decoration: InputDecoration(
                        labelText: 'LDL',
                        hintText: "LDL",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                  child: TextFormField(
                    controller: vldl,
                    decoration: InputDecoration(
                        labelText: 'VLDL',
                        hintText: "VLDL",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text("LFT"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: tbirirubin,
                    decoration: InputDecoration(
                        labelText: 'T Bilirubin',
                        hintText: "T Bilirubin",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: dbilirubin,
                    decoration: InputDecoration(
                        labelText: 'D Bilirubin',
                        hintText: "D Bilirubin",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: sgot,
                    decoration: InputDecoration(
                        labelText: 'SGOT',
                        hintText: "SGOT",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: sgpt,
                    decoration: InputDecoration(
                        labelText: 'SGPT',
                        hintText: "SGPT",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: epithelial,
                    decoration: InputDecoration(
                        labelText: 'Epithelial cells',
                        hintText: "Epithelial cells",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: crystal,
                    decoration: InputDecoration(
                        labelText: 'Crystals',
                        hintText: "Crystals",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: casts,
                    decoration: InputDecoration(
                        labelText: 'Casts',
                        hintText: "Casts",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: bacteria,
                    decoration: InputDecoration(
                        labelText: 'Bacteria',
                        hintText: "Bacteria",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: bile_salt,
                    decoration: InputDecoration(
                        labelText: 'Bile salt ',
                        hintText: "Bile salt",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 30),
                  child: TextFormField(
                    controller: bile_pigment,
                    decoration: InputDecoration(
                        labelText: 'Bile pigment ',
                        hintText: "Bile pigment",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                  child: TextFormField(
                    controller: stool,
                    decoration: InputDecoration(
                        labelText: 'STOOL R/E ',
                        hintText: "STOOL R/E",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.fromLTRB(90, 0, 90, 10),
                  child: TextFormField(
                    controller: sputum,
                    decoration: InputDecoration(
                        labelText: 'SPUTUM AFB ',
                        hintText: "SPUTUM AFB",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.topCenter,
                  child: Text("Serum electrolytes"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: sodium,
                    decoration: InputDecoration(
                        labelText: 'Sodium',
                        hintText: "Sodium",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: potassium,
                    decoration: InputDecoration(
                        labelText: 'Potassium',
                        hintText: "Potassium",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: tprotien,
                    decoration: InputDecoration(
                        labelText: 'T Protein',
                        hintText: "T Protein",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                //   child: TextFormField(
                //     controller: albumin,
                //     decoration: InputDecoration(
                //         labelText: 'Albumin',
                //         hintText: "Albumin",
                //         prefixIcon: Icon(Icons.percent),
                //         border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(20)
                //         )
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: albumin1,
                    decoration: InputDecoration(
                        labelText: 'Albumin1',
                        hintText: "Albumin1",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: globulin,
                    decoration: InputDecoration(
                        labelText: 'Globulin',
                        hintText: "Globulin",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: ag_ratio,
                    decoration: InputDecoration(
                        labelText: 'A/G Ratio',
                        hintText: "A/G Ratio",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                  child: TextFormField(
                    controller: alakine_phos,
                    decoration: InputDecoration(
                        labelText: 'Alkaline Phosphatase',
                        hintText: "Alkaline Phosphatase",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text("RFT"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: urea,
                    decoration: InputDecoration(
                        labelText: 'Urea',
                        hintText: "Urea",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: screat,
                    decoration: InputDecoration(
                        labelText: 'S Creatinine',
                        hintText: "S Creatinine",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 30),
                  child: TextFormField(
                    controller: suricacid,
                    decoration: InputDecoration(
                        labelText: 'S Uric Acid',
                        hintText: "S Uric Acid",
                        prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: lab_reportcol,
                    decoration: InputDecoration(
                        labelText: 'Card test',
                        hintText: "Card test",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: hiv,
                    decoration: InputDecoration(
                        labelText: 'HIV',
                        hintText: "HIV",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: hbsag,
                    decoration: InputDecoration(
                        labelText: 'HBsAg',
                        hintText: "HBsAg",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: rdt,
                    decoration: InputDecoration(
                        labelText: 'RDT(for malaria)',
                        hintText: "RDT(for malaria)",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: dengue,
                    decoration: InputDecoration(
                        labelText: 'DENGUE',
                        hintText: "DENGUE",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: ns1ag,
                    decoration: InputDecoration(
                        labelText: 'Ns 1 Ag',
                        hintText: "Ns 1 Ag",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                  child: TextFormField(
                    controller: lgg1gm,
                    decoration: InputDecoration(
                        labelText: 'LsG lgM',
                        hintText: "LsG lgM",
                        // prefixIcon: Icon(Icons.percent),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: 200,
                  // color: Colors.cyan,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: ElevatedButton
                    (onPressed: () {
                    postdata();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => labdraw()));
                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo, // Background color
                    ),
                    child: Text("Post"),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
