import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corominder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Corominder"),
      ),
      body: ExpandableTheme(
        data:
        const ExpandableThemeData(iconColor: Colors.blue, useInkWell: true),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(),
            Card2(),
            Card3(),
            Card4(),
            Card5(),
            Card6(),
            Card7(),
            Card8(),
            Card9(),
            Card10(),
          ],
        ),
      ),
    );
  }
}

const loremIpsum1 = "You can reduce your chances of being infected or spreading COVID-19 by taking some simple precautions: ";
const loremIpsum11 = "- Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water.Why? Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.";
const loremIpsum12 = "- Maintain at least 1 meter (3 feet) distance between yourself and anyone who is coughing or sneezing. Why? When someone coughs or sneezes they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person coughing has the disease.";
const loremIpsum13 = "- Avoid touching eyes, nose and mouth. Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick.";
const loremIpsum14 = "- Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately. Why? Droplets spread virus. By following good respiratory hygiene you protect the people around you from viruses such as cold, flu and COVID-19.";
const loremIpsum15 = "- Stay home if you feel unwell. If you have a fever, cough and difficulty breathing, seek medical attention and call in advance. Follow the directions of your local health authority. Why? National and local authorities will have the most up to date information on the situation in your area. Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also protect you and help prevent spread of viruses and other infections.";
const loremIpsum16 = "- Keep up to date on the latest COVID-19 hotspots (cities or local areas where COVID-19 is spreading widely). If possible, avoid traveling to places  – especially if you are an older person or have diabetes, heart or lung disease.";
const loremIpsum17 = "- Self-isolate by staying at home if you begin to feel unwell, even with mild symptoms such as headache, low grade fever (37.3 C or above) and slight runny nose, until you recover. If it is essential for you to have someone bring you supplies or to go out, e.g. to buy food, then wear a mask to avoid infecting other people. Why? Avoiding contact with others and visits to medical facilities will allow these facilities to operate more effectively and help protect you and others from possible COVID-19 and other viruses.";
const loremIpsum18 = "- If you develop fever, cough and difficulty breathing, seek medical advice promptly as this may be due to a respiratory infection or other serious condition. Call in advance and tell your provider of any recent travel or contact with travelers. Why? Calling in advance will allow your health care provider to quickly direct you to the right health facility. This will also help to prevent possible spread of COVID-19 and other viruses.";
const loremIpsum2 = "WHO recomends using at least 60% cleaning gel or water and soap. One should wash their hands for at least 30 seconds in the proper way: ";
const loremIpsum3 = "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention. The incubation period (time from contamination to showing symptoms) is 1-14 days, usually 5.";
const loremIpsum4 = "The COVID-19 outbreak is a very hard time. However, it has also shown the good of many people and societies. In the whole of Poland, people are uniting and proposing to assist each other – especially the elderly and quarantined. The propositions range from buying groceries, taking dogs out for walks, lending books even to online classes. If you want to help or are in need of any form of assistance – your local community will most likely be happy to help. Get in touch with them on the Facebook group “Widzialna Ręka”: ";
const loremIpsum41 = "- Widzialna Ręka";
const loremIpsum5 = "Remember that cats and dogs cannot spread or contract the disease. Contrary to what many people say, you do not have to fear getting infected from one of your pets. Of course, while taking them for walks remember about the proper hygiene – remember to wash your hands thoroughly after returning back home.";
const loremIpsum6 = "Many people feel the need to use safe masks. However, there’s a shortage of them and not all situations are reasonable to use them. The WHO advises to put them on when: ";
const loremIpsum61 = "-	Wear a mask if you are coughing, sneezing or diagnosed with COVID-19.";
const loremIpsum62 = "-	Wear a mask if you are caring for a person with suspected 2019-nCoV infection.";
const loremIpsum63 = "It is not necessary to wear masks in other cases. Remember that only combined with frequent hand washing and general hygiene are masks beneficial. However, if needed put the mask on as follows:";
const loremIpsum7 = "There has been a lot of talk recently about staying at home and self-isolation. In these difficult times, many companies are showing responsibility giving their best for the situation not to escalate. That is why many of them have prepared special freebies to encourage people to stay at home. Here’s a list of some: ";
const loremIpsum71 = "-	empik.com: free Empik Premium passes – unlimited audiobooks and e-books";
const loremIpsum72 = "-	digitalconcerthall.com: free monthly tickets, which grant access to their classical recordings";
const loremIpsum73 = "-	metopera.org: free daily operas";
const loremIpsum74 = "-	HBO: first season of Westworld for free";
const loremIpsum75 = "-	epicgames.com: free PC game bundle";
const loremIpsum76 = "-	ninateka.pl: free Polish movies";
const loremIpsum8 = "24/7: +48 800 190 590 or to find a hospital near you: https://www.gov.pl/web/koronawirus/lista-szpitali";
const loremIpsum9 = "If in need of further assistance visit:";
const loremIpsum91 = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports/";
const loremIpsum92 = "https://www.gov.pl/web/koronawirus";
const loremIpsum93 = "https://www.ecdc.europa.eu/en/novel-coronavirus-china";
const loremIpsum10 = "Information for doctors:";
const loremIpsum101 = "https://www.cochranelibrary.com/collections/doi/SC000039/full";
const loremIpsum102 = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/global-research-on-novel-coronavirus-2019-ncov";
const loremIpsum103 = "https://www.who.int/docs/default-source/coronaviruse/who-rights-roles-respon-hw-covid-19.pdf?sfvrsn=bcabd401_0";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "How do I protect myself?",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum1,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum1,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum11,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum12,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum13,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum14,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum15,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum16,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum17,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum18,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "How do you properly wash your hands?",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum2,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum2,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Image.network(
                          'https://grafik.rp.pl/grafika2/1543789,9.jpg',
                        )
                    ),
                    ],
                  ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "What are the symptoms?",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum3,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum3,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "How to help/receive help?",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum4,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum4,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum41,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


class Card5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "House animals DO NOT spread COVID-19!",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum5,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum5,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "When and how to wear face masks?",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum6,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum6,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum61,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum62,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum63,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Free entertainment offers for self-quarantine!",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum7,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum7,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum71,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum72,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum73,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum74,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum75,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum76,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Who to contact if you think you might have COVID-19?",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum8,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum8,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),

                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Further questions!",
                          style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum9,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum9,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum91,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum92,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum93,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Materials for doctors",
                          style: Theme
                              .of(context)
                              .textTheme
                              .body2,
                        )),
                    collapsed: Text(
                      loremIpsum10,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum10,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum101,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum102,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum103,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
