//while the app is building let's create the NewsData class

class NewsData {
  String? title;
  String? source;
  String? content;
  String? urlToImage;
  String? date;

  //let's create the constructor
  NewsData(
    this.title,
    this.source,
    this.content,
    this.date,
    this.urlToImage,
  );

  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<NewsData> breakingNewsData = [
    NewsData(
        "Australian Wool Production Forecast Report August 2023",
        "AWI",
        "The Australian Wool Production Forecasting Committee (AWPFC) has confirmed its estimate made in April of shorn wool production for the 2022/23 season. Their estimate of 328 million kilograms (Mkg) greasy, is 1.3% higher than the 2021/22 season production of 324 Mkg greasy.",
        "2023-08-11",
        "https://woolnews.net/content/uploads/2021/08/Shorn-Aust-wool.jpg"),
    NewsData(
        "Australian wool sale – 31 August 2023 – AWI Commentary",
        "AWI",
        "Pre-sale expectations were for a better week for prices at Australian wool auctions and that was certainly the case upon opening. Almost all categories sold progressively dearer through the first day of selling with the result being wool values closing at 15 to 30ac higher.",
        "2023-08-11",
        "https://woolnews.net/content/uploads/2023/08/Woolsale-0002-720x540.jpg"),
    NewsData(
        "Cape Wools Weekly Market Reports for 29 and 30 August 2023",
        "AWI",
        "The market continued to experience negative pressure, with the stronger SA currency further adding to the difficult trading environment.",
        "2022-08-11",
        "https://woolnews.net/content/uploads/2023/04/South-Africa-Classing-2-720x540.jpg"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Time to enhance ties with India: PM Narendra Modi to Australian industry",
        " Dipanjan Roy Chaudhury",
        "Prime Minister Narendra Modi on Tuesday met business leaders of top Australian companies in Sydney and called for enhancing cooperation with the Indian industry in areas such as mining, technology, skilling, clean energy and pension funds.",
        "May 24, 2023,",
        "https://img.etimg.com/thumb/msid-100442094,width-300,height-225,imgsize-34048,,resizemode-75/narendra-modi.jpg"),
    NewsData(
        "DGTR reviews need to continue anti-dumping duty on imported Chinese flax yarn",
        "PTI",
        "The commerce ministry's investigation arm DGTR has initiated a probe to review the need to continue the anti-dumping duty on flax yarn imported from China, following complaints from the domestic industry",
        "Mar 09, 2023",
        "https://img.etimg.com/thumb/msid-99317013,width-300,height-225,imgsize-2682949,,resizemode-75/cotton_yarn.jpg"),
    NewsData(
        "ECTA between India-Australia to unlock new potential in trade and investment: Albane",
        "ANI",
        "Australian Prime Minister Anthony Albanese, who is on a 4-day official visit to India, on Thursday said the Economic Cooperation and Trade Agreement (ECTA) signed between the two countries is a transformative agreement, which will unlock the next level of potential in trade and investment.",
        "Mar 09, 2023",
        "https://img.etimg.com/thumb/msid-98522741,width-300,height-225,imgsize-73144,,resizemode-75/ecta-between-india-australia-to-unlock-new-potential-in-trade-and-investment-albanese.jpg"),
    NewsData(
        "The future of fashion grows in a pond",
        "Gwen Ackerman, Bloomberg",
        "Nutritious and fast-growing, algae already has a following as an alternative protein among health fanatics. A new generation of sustainable fashion startups want us to wear it too.",
        "Jan 31, 2023",
        "https://img.etimg.com/thumb/msid-97472873,width-300,height-225,imgsize-347410,,resizemode-75/organic-fashion-istock.jpg"),
  ];
}