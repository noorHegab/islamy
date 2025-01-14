final suras = [
  {'name': 'الفاتحة', 'ayahs': 7, 'path': 'assets/sura_text/1.txt'},
  {'name': 'البقرة', 'ayahs': 286, 'path': 'assets/sura_text/2.txt'},
  {'name': 'آل عمران', 'ayahs': 200, 'path': 'assets/sura_text/3.txt'},
  {'name': 'النساء', 'ayahs': 176, 'path': 'assets/sura_text/4.txt'},
  {'name': 'المائدة', 'ayahs': 120, 'path': 'assets/sura_text/5.txt'},
  {'name': 'الأنعام', 'ayahs': 165, 'path': 'assets/sura_text/6.txt'},
  {'name': 'الأعراف', 'ayahs': 206, 'path': 'assets/sura_text/7.txt'},
  {'name': 'الأنفال', 'ayahs': 75, 'path': 'assets/sura_text/8.txt'},
  {'name': 'التوبة', 'ayahs': 129, 'path': 'assets/sura_text/9.txt'},
  {'name': 'يونس', 'ayahs': 109, 'path': 'assets/sura_text/10.txt'},
  {'name': 'هود', 'ayahs': 123, 'path': 'assets/sura_text/11.txt'},
  {'name': 'يوسف', 'ayahs': 111, 'path': 'assets/sura_text/12.txt'},
  {'name': 'الرعد', 'ayahs': 43, 'path': 'assets/sura_text/13.txt'},
  {'name': 'ابراهيم', 'ayahs': 52, 'path': 'assets/sura_text/14.txt'},
  {'name': 'الحجر', 'ayahs': 99, 'path': 'assets/sura_text/15.txt'},
  {'name': 'النحل', 'ayahs': 128, 'path': 'assets/sura_text/16.txt'},
  {'name': 'الإسراء', 'ayahs': 111, 'path': 'assets/sura_text/17.txt'},
  {'name': 'الكهف', 'ayahs': 110, 'path': 'assets/sura_text/18.txt'},
  {'name': 'مريم', 'ayahs': 98, 'path': 'assets/sura_text/19.txt'},
  {'name': 'طه', 'ayahs': 135, 'path': 'assets/sura_text/20.txt'},
  {'name': 'الأنبياء', 'ayahs': 112, 'path': 'assets/sura_text/21.txt'},
  {'name': 'الحج', 'ayahs': 78, 'path': 'assets/sura_text/22.txt'},
  {'name': 'المؤمنون', 'ayahs': 118, 'path': 'assets/sura_text/23.txt'},
  {'name': 'النور', 'ayahs': 64, 'path': 'assets/sura_text/24.txt'},
  {'name': 'الفرقان', 'ayahs': 77, 'path': 'assets/sura_text/25.txt'},
  {'name': 'الشعراء', 'ayahs': 227, 'path': 'assets/sura_text/26.txt'},
  {'name': 'النمل', 'ayahs': 93, 'path': 'assets/sura_text/27.txt'},
  {'name': 'القصص', 'ayahs': 88, 'path': 'assets/sura_text/28.txt'},
  {'name': 'العنكبوت', 'ayahs': 69, 'path': 'assets/sura_text/29.txt'},
  {'name': 'الروم', 'ayahs': 60, 'path': 'assets/sura_text/30.txt'},
  {'name': 'لقمان', 'ayahs': 34, 'path': 'assets/sura_text/31.txt'},
  {'name': 'السجدة', 'ayahs': 30, 'path': 'assets/sura_text/32.txt'},
  {'name': 'الأحزاب', 'ayahs': 73, 'path': 'assets/sura_text/33.txt'},
  {'name': 'سبأ', 'ayahs': 54, 'path': 'assets/sura_text/34.txt'},
  {'name': 'فاطر', 'ayahs': 45, 'path': 'assets/sura_text/35.txt'},
  {'name': 'يس', 'ayahs': 83, 'path': 'assets/sura_text/36.txt'},
  {'name': 'الصافات', 'ayahs': 182, 'path': 'assets/sura_text/37.txt'},
  {'name': 'ص', 'ayahs': 88, 'path': 'assets/sura_text/38.txt'},
  {'name': 'الزمر', 'ayahs': 75, 'path': 'assets/sura_text/39.txt'},
  {'name': 'غافر', 'ayahs': 85, 'path': 'assets/sura_text/40.txt'},
  {'name': 'فصلت', 'ayahs': 54, 'path': 'assets/sura_text/41.txt'},
  {'name': 'الشورى', 'ayahs': 53, 'path': 'assets/sura_text/42.txt'},
  {'name': 'الزخرف', 'ayahs': 89, 'path': 'assets/sura_text/43.txt'},
  {'name': 'الدخان', 'ayahs': 59, 'path': 'assets/sura_text/44.txt'},
  {'name': 'الجاثية', 'ayahs': 37, 'path': 'assets/sura_text/45.txt'},
  {'name': 'الأحقاف', 'ayahs': 35, 'path': 'assets/sura_text/46.txt'},
  {'name': 'محمد', 'ayahs': 38, 'path': 'assets/sura_text/47.txt'},
  {'name': 'الفتح', 'ayahs': 29, 'path': 'assets/sura_text/48.txt'},
  {'name': 'الحجرات', 'ayahs': 18, 'path': 'assets/sura_text/49.txt'},
  {'name': 'ق', 'ayahs': 45, 'path': 'assets/sura_text/50.txt'},
  {'name': 'الذاريات', 'ayahs': 60, 'path': 'assets/sura_text/51.txt'},
  {'name': 'الطور', 'ayahs': 49, 'path': 'assets/sura_text/52.txt'},
  {'name': 'النجم', 'ayahs': 62, 'path': 'assets/sura_text/53.txt'},
  {'name': 'القمر', 'ayahs': 55, 'path': 'assets/sura_text/54.txt'},
  {'name': 'الرحمن', 'ayahs': 78, 'path': 'assets/sura_text/55.txt'},
  {'name': 'الواقعة', 'ayahs': 96, 'path': 'assets/sura_text/56.txt'},
  {'name': 'الحديد', 'ayahs': 29, 'path': 'assets/sura_text/57.txt'},
  {'name': 'المجادلة', 'ayahs': 22, 'path': 'assets/sura_text/58.txt'},
  {'name': 'الحشر', 'ayahs': 24, 'path': 'assets/sura_text/59.txt'},
  {'name': 'الممتحنة', 'ayahs': 13, 'path': 'assets/sura_text/60.txt'},
  {'name': 'الصف', 'ayahs': 14, 'path': 'assets/sura_text/61.txt'},
  {'name': 'الجمعة', 'ayahs': 11, 'path': 'assets/sura_text/62.txt'},
  {'name': 'المنافقون', 'ayahs': 11, 'path': 'assets/sura_text/63.txt'},
  {'name': 'التغابن', 'ayahs': 18, 'path': 'assets/sura_text/64.txt'},
  {'name': 'الطلاق', 'ayahs': 12, 'path': 'assets/sura_text/65.txt'},
  {'name': 'التحريم', 'ayahs': 12, 'path': 'assets/sura_text/66.txt'},
  {'name': 'الملك', 'ayahs': 30, 'path': 'assets/sura_text/67.txt'},
  {'name': 'القلم', 'ayahs': 52, 'path': 'assets/sura_text/68.txt'},
  {'name': 'الحاقة', 'ayahs': 52, 'path': 'assets/sura_text/69.txt'},
  {'name': 'المعارج', 'ayahs': 44, 'path': 'assets/sura_text/70.txt'},
  {'name': 'نوح', 'ayahs': 28, 'path': 'assets/sura_text/71.txt'},
  {'name': 'الجن', 'ayahs': 28, 'path': 'assets/sura_text/72.txt'},
  {'name': 'المزمل', 'ayahs': 20, 'path': 'assets/sura_text/73.txt'},
  {'name': 'المدثر', 'ayahs': 56, 'path': 'assets/sura_text/74.txt'},
  {'name': 'القيامة', 'ayahs': 40, 'path': 'assets/sura_text/75.txt'},
  {'name': 'الإنسان', 'ayahs': 31, 'path': 'assets/sura_text/76.txt'},
  {'name': 'المرسلات', 'ayahs': 50, 'path': 'assets/sura_text/77.txt'},
  {'name': 'النبأ', 'ayahs': 40, 'path': 'assets/sura_text/78.txt'},
  {'name': 'النازعات', 'ayahs': 46, 'path': 'assets/sura_text/79.txt'},
  {'name': 'عبس', 'ayahs': 42, 'path': 'assets/sura_text/80.txt'},
  {'name': 'التكوير', 'ayahs': 29, 'path': 'assets/sura_text/81.txt'},
  {'name': 'الإنفطار', 'ayahs': 19, 'path': 'assets/sura_text/82.txt'},
  {'name': 'المطففين', 'ayahs': 36, 'path': 'assets/sura_text/83.txt'},
  {'name': 'الإنشقاق', 'ayahs': 25, 'path': 'assets/sura_text/84.txt'},
  {'name': 'البروج', 'ayahs': 22, 'path': 'assets/sura_text/85.txt'},
  {'name': 'الطارق', 'ayahs': 17, 'path': 'assets/sura_text/86.txt'},
  {'name': 'الأعلى', 'ayahs': 19, 'path': 'assets/sura_text/87.txt'},
  {'name': 'الغاشية', 'ayahs': 26, 'path': 'assets/sura_text/88.txt'},
  {'name': 'الفجر', 'ayahs': 30, 'path': 'assets/sura_text/89.txt'},
  {'name': 'البلد', 'ayahs': 20, 'path': 'assets/sura_text/90.txt'},
  {'name': 'الشمس', 'ayahs': 15, 'path': 'assets/sura_text/91.txt'},
  {'name': 'الليل', 'ayahs': 21, 'path': 'assets/sura_text/92.txt'},
  {'name': 'الضحى', 'ayahs': 11, 'path': 'assets/sura_text/93.txt'},
  {'name': 'الشرح', 'ayahs': 8, 'path': 'assets/sura_text/94.txt'},
  {'name': 'التين', 'ayahs': 8, 'path': 'assets/sura_text/95.txt'},
  {'name': 'العلق', 'ayahs': 19, 'path': 'assets/sura_text/96.txt'},
  {'name': 'القدر', 'ayahs': 5, 'path': 'assets/sura_text/97.txt'},
  {'name': 'البينة', 'ayahs': 8, 'path': 'assets/sura_text/98.txt'},
  {'name': 'الزلزلة', 'ayahs': 8, 'path': 'assets/sura_text/99.txt'},
  {'name': 'العاديات', 'ayahs': 11, 'path': 'assets/sura_text/100.txt'},
  {'name': 'القارعة', 'ayahs': 11, 'path': 'assets/sura_text/101.txt'},
  {'name': 'التكاثر', 'ayahs': 8, 'path': 'assets/sura_text/102.txt'},
  {'name': 'العصر', 'ayahs': 3, 'path': 'assets/sura_text/103.txt'},
  {'name': 'الهمزة', 'ayahs': 9, 'path': 'assets/sura_text/104.txt'},
  {'name': 'الفيل', 'ayahs': 5, 'path': 'assets/sura_text/105.txt'},
  {'name': 'قريش', 'ayahs': 4, 'path': 'assets/sura_text/106.txt'},
  {'name': 'الماعون', 'ayahs': 7, 'path': 'assets/sura_text/107.txt'},
  {'name': 'الكوثر', 'ayahs': 3, 'path': 'assets/sura_text/108.txt'},
  {'name': 'الكافرون', 'ayahs': 6, 'path': 'assets/sura_text/109.txt'},
  {'name': 'النصر', 'ayahs': 3, 'path': 'assets/sura_text/110.txt'},
  {'name': 'المسد', 'ayahs': 5, 'path': 'assets/sura_text/111.txt'},
  {'name': 'الإخلاص', 'ayahs': 4, 'path': 'assets/sura_text/112.txt'},
  {'name': 'الفلق', 'ayahs': 5, 'path': 'assets/sura_text/113.txt'},
  {'name': 'الناس', 'ayahs': 6, 'path': 'assets/sura_text/114.txt'},
];

final hadeth = [
  {'name': 'الحديث 1', 'path': 'assets/text/h1.txt'},
  {'name': 'الحديث 2', 'path': 'assets/text/h2.txt'},
  {'name': 'الحديث 3', 'path': 'assets/text/h3.txt'},
  {'name': 'الحديث 4', 'path': 'assets/text/h4.txt'},
  {'name': 'الحديث 5', 'path': 'assets/text/h5.txt'},
  {'name': 'الحديث 6', 'path': 'assets/text/h6.txt'},
  {'name': 'الحديث 7', 'path': 'assets/text/h7.txt'},
  {'name': 'الحديث 8', 'path': 'assets/text/h8.txt'},
  {'name': 'الحديث 9', 'path': 'assets/text/h9.txt'},
  {'name': 'الحديث 10', 'path': 'assets/text/h10.txt'},
  {'name': 'الحديث 11', 'path': 'assets/text/h11.txt'},
  {'name': 'الحديث 12', 'path': 'assets/text/h12.txt'},
  {'name': 'الحديث 13', 'path': 'assets/text/h13.txt'},
  {'name': 'الحديث 14', 'path': 'assets/text/h14.txt'},
  {'name': 'الحديث 15', 'path': 'assets/text/h15.txt'},
  {'name': 'الحديث 16', 'path': 'assets/text/h16.txt'},
  {'name': 'الحديث 17', 'path': 'assets/text/h17.txt'},
  {'name': 'الحديث 18', 'path': 'assets/text/h18.txt'},
  {'name': 'الحديث 19', 'path': 'assets/text/h19.txt'},
  {'name': 'الحديث 20', 'path': 'assets/text/h20.txt'},
  {'name': 'الحديث 21', 'path': 'assets/text/h21.txt'},
  {'name': 'الحديث 22', 'path': 'assets/text/h22.txt'},
  {'name': 'الحديث 23', 'path': 'assets/text/h23.txt'},
  {'name': 'الحديث 24', 'path': 'assets/text/h24.txt'},
  {'name': 'الحديث 25', 'path': 'assets/text/h25.txt'},
  {'name': 'الحديث 26', 'path': 'assets/text/h26.txt'},
  {'name': 'الحديث 27', 'path': 'assets/text/h27.txt'},
  {'name': 'الحديث 28', 'path': 'assets/text/h28.txt'},
  {'name': 'الحديث 29', 'path': 'assets/text/h29.txt'},
  {'name': 'الحديث 30', 'path': 'assets/text/h30.txt'},
  {'name': 'الحديث 31', 'path': 'assets/text/h31.txt'},
  {'name': 'الحديث 32', 'path': 'assets/text/h32.txt'},
  {'name': 'الحديث 33', 'path': 'assets/text/h33.txt'},
  {'name': 'الحديث 34', 'path': 'assets/text/h34.txt'},
  {'name': 'الحديث 35', 'path': 'assets/text/h35.txt'},
  {'name': 'الحديث 36', 'path': 'assets/text/h36.txt'},
  {'name': 'الحديث 37', 'path': 'assets/text/h37.txt'},
  {'name': 'الحديث 38', 'path': 'assets/text/h38.txt'},
  {'name': 'الحديث 39', 'path': 'assets/text/h39.txt'},
  {'name': 'الحديث 40', 'path': 'assets/text/h40.txt'},
  {'name': 'الحديث 41', 'path': 'assets/text/h41.txt'},
  {'name': 'الحديث 42', 'path': 'assets/text/h42.txt'},
  {'name': 'الحديث 43', 'path': 'assets/text/h43.txt'},
  {'name': 'الحديث 44', 'path': 'assets/text/h44.txt'},
  {'name': 'الحديث 45', 'path': 'assets/text/h45.txt'},
  {'name': 'الحديث 46', 'path': 'assets/text/h46.txt'},
  {'name': 'الحديث 47', 'path': 'assets/text/h47.txt'},
  {'name': 'الحديث 48', 'path': 'assets/text/h48.txt'},
  {'name': 'الحديث 49', 'path': 'assets/text/h49.txt'},
  {'name': 'الحديث 50', 'path': 'assets/text/h50.txt'},
];

final List<String> ad3eyah = [
  "أستغفر الله العظيم الذي لا إله إلا هو، الحي القيوم وأتوب إليه.", // دعاء الاستغفار
  "اللهم بك أصبحنا وبك أمسينا، وبك نحيا وبك نموت، وإليك النشور.", // دعاء الصباح
  "اللهم بك أمسينا وبك أصبحنا، وبك نحيا وبك نموت، وإليك المصير.", // دعاء المساء
  "اللهم ارزقني رزقاً حلالاً طيباً مباركاً فيه.", // دعاء الرزق
  "اللهم اجعل لي من كل همّ فرجاً ومن كل ضيق مخرجاً ومن كل بلاء عافية.", // دعاء السعادة
  "لا إله إلا الله العظيم الحليم، لا إله إلا الله رب العرش العظيم، لا إله إلا الله رب السماوات ورب الأرض ورب العرش الكريم.", // دعاء الكرب
  "سبحان الذي سخر لنا هذا وما كنا له مقرنين وإنا إلى ربنا لمنقلبون.", // دعاء السفر
  "باسمك اللهم أموت وأحيا.", // دعاء النوم
  "اللهم اشفني شفاءً لا يغادر سقماً.", // دعاء الشفاء
  "اللهم إني أعوذ بك من الهم والحزن، وأعوذ بك من العجز والكسل، وأعوذ بك من الجبن والبخل، وأعوذ بك من غلبة الدين وقهر الرجال.", // دعاء الحزن
  "اللهم إني أعوذ بك من علم لا ينفع، ومن قلب لا يخشع، ومن نفس لا تشبع، ومن دعوة لا يُستجاب لها.", // دعاء طلب العلم
  "اللهم اجعلنا من التوابين، واجعلنا من المتطهرين.", // دعاء الطهارة
  "اللهم إني أعوذ بك من شر ما عملت، ومن شر ما لم أعمل.", // دعاء طلب الحماية
  "اللهم إني أسألك علماً نافعاً، ورزقاً طيباً، وعملاً متقبلاً.", // دعاء طلب العلم النافع
  "اللهم إني أعوذ بك من زوال نعمتك، وتحول عافيتك، وفجاءة نقمتك، وجميع سخطك.", // دعاء الحفظ من السوء
  "اللهم إني أعوذ بك من فتنة النار وعذاب النار، وفتنة القبر وعذاب القبر، وشر فتنة الغنى، وشر فتنة الفقر.", // دعاء الفتن
  "اللهم إني أعوذ بك من الجبن وأعوذ بك من البخل، وأعوذ بك من أن أُرد إلى أرذل العمر، وأعوذ بك من فتنة الدنيا وعذاب القبر.", // دعاء الحماية
  "اللهم إني أسألك الهدى والتقى والعفاف والغنى.", // دعاء الهداية
  "اللهم أعني على ذكرك وشكرك وحسن عبادتك.", // دعاء العون
  "اللهم إني أعوذ بك من الهم والحزن، وأعوذ بك من العجز والكسل، وأعوذ بك من الجبن والبخل، وأعوذ بك من غلبة الدين وقهر الرجال." // دعاء الهم والحزن (مكرر لتأكيده)
];

const List<Map<String, String>> azkarMorning = [
  {
    'text': "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ\n"
        "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255].\n"
        "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح.",
    'count': '1'
  },
  {
    'text': "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\n"
        "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.\n"
        "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).",
    'count': '1'
  },
  {
    'text': "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\n"
        "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.",
    'count': '1'
  },
  {
    'text': "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\n"
        "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.",
    'count': '1'
  },
  {
    'text':
        "أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.",
    'count': '1'
  },
  {
    'text':
        "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ.\n"
            "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح.",
    'count': '1'
  },
  {
    'text':
        "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً.\n"
            "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة.",
    'count': '1'
  },
  {
    'text':
        "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.\n"
            "من قالها أعتقه الله من النار.",
    'count': '1'
  },
  {
    'text':
        "اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.\n"
            "من قالها حين يصبح أدى شكر يومه.",
    'count': '1'
  },
  {
    'text':
        "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم.\n"
            "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة.",
    'count': '1'
  },
  {
    'text':
        "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.\n"
            "لم يضره من الله شيء.",
    'count': '1'
  },
  {
    'text':
        "اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور.",
    'count': '1'
  },
  {
    'text':
        "أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.",
    'count': '1'
  },
  {
    'text':
        "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه.",
    'count': '1'
  },
  {
    'text':
        "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْتَ.\n"
            "من قالها ثلاث مرات حين يصبح وحين يمسى.",
    'count': '3'
  },
  {
    'text': "اللّهُـمَّ إِنِّي أَسْألُكَ العَافِيَةَ في الدُّنْيَا وَالآخِرَة.",
    'count': '1'
  },
  {
    'text':
        "اللّهُـمَّ إِنِّي أَسْألُكَ مِنْ خَيْرِ هَـٰذِهِ اللَّيْلَةِ، وَفَتْحِهَا وَنَصْرَهَا وَبَرَكَاتِهَا وَهُدَاهَا وَالْعَافِيَةَ مِنْ شَرِّهَا وَشَرِّ مَا بَعْدَهَا، اللّهُـمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ هَـٰذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا.",
    'count': '1'
  },
  {'text': "اللّهُـمَّ اجْعَلْ لِي نُورًا فِي قَبْرِي.", 'count': '1'}
];

final List<Map<String, String>> azkarData = [
  {
    'text':
        'أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله.\nاللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام .',
    'count': '01'
  },
  {
    'text':
        'لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.',
    'count': '01'
  },
  {
    'text':
        'لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.',
    'count': '01'
  },
  {'text': 'سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر.', 'count': '33'},
  {
    'text':
        'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير.',
    'count': '01'
  },
  {
    'text':
        'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.\nبِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.\nبِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\nقُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.\nثلاث مرات بعد صلاتي الفجر والمغرب. ومرة بعد الصلوات الأخرى.',
    'count': '03'
  },
  {
    'text':
        'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ\nاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]',
    'count': '01'
  },
  {
    'text':
        'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.\nعَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح.',
    'count': '10'
  },
  {
    'text':
        'اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً.\nبَعْد السّلامِ من صَلاةِ الفَجْر.',
    'count': '01'
  },
  {
    'text': 'اللَّهُمَّ أَجِرْنِي مِنْ النَّار.\nبعد صلاة الصبح والمغرب.',
    'count': '07'
  },
  {
    'text':
        'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ.',
    'count': '01'
  },
];

final List<Map<String, String>> azkarElsalah = [
  {
    'text':
        'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]. من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح.',
    'count': '01'
  },
  {
    'text':
        'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ. [البقرة 285 - 286]. من قرأ آيتين من آخر سورة البقرة في ليلة كفتاه.',
    'count': '01'
  },
  {
    'text':
        'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ. من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).',
    'count': '03'
  },
  {
    'text':
        'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.',
    'count': '03'
  },
  {
    'text':
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.',
    'count': '03'
  },
  {
    'text':
        'أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.',
    'count': '01'
  },
  {
    'text':
        'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطْـعْت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ. من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح.',
    'count': '01'
  },
  {
    'text':
        'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً. من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة.',
    'count': '03'
  },
  {
    'text':
        'اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك. من قالها أعتقه الله من النار.',
    'count': '04'
  },
  {
    'text':
        'اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر. من قالها حين يمسى أدى شكر يومه.',
    'count': '01'
  },
  {
    'text':
        'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة.',
    'count': '07'
  },
  {
    'text':
        'بِسـمِ اللهِ الذي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي ٱلْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ ٱلْعَلِيْمُ ٱلْحَكِيمُ. من قالها ثلاث مرات لم يضره شيء.',
    'count': '03'
  },
  {
    'text':
        'اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ.',
    'count': '01'
  },
  {
    'text':
        'أَمْسَيْنَا عَلَى فِطْرَةِ ٱلْإِسْلاَمِ وَعَلَى كَلِمَةِ الإِخْلَاصِ وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صلى الله عليه وسلم وَعَلَى مِلَّةِ أَبِينَا إِبْرَاهِيمَ حَنِيفًا مُسْلِمًا وَمَا كَانَ مِنَ ٱلْمُشْرِكِينَ.',
    'count': '01'
  },
  {
    'text':
        'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ. من قالها مائة مرة غفرت خطاياه وإن كانت مثل زبد البحر.',
    'count': '03'
  },
  {
    'text':
        'اللّهُـمَّ عافِـني فِي بَدَنِي، اللّهُـمَّ عافِـني فِي سَمْعِي، اللّهُـمَّ عافِـني فِي بَصَرِي، لا إِلَهَ إِلَّا أَنْتَ. من قالها ثلاث مرات حين يصبح وحين يمسى.',
    'count': '03'
  },
  {
    'text':
        'اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ وَمِنْ عَذَابِ الْقَبْرِ وَمِنْ عَذَابِ الْجَحِيمِ. اللّهُمَّ آتِنِي نَفْسًا تَقِيَةً وَأَذْهَبْ عَنِّي هُمُومِي وَأَحْزَانِي. من قالها ثلاث مرات حين يصبح وحين يمسى.',
    'count': '03'
  },
  {
    'text':
        'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ الْجَنَّةَ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ وَأَعُوذُ بِكَ مِنَ النَّارِ وَمَا قَرَّبَ إِلَيْهَا مِنْ قَوْلٍ أَوْ عَمَلٍ وَأَسْـأَلُكَ أَنْ تَجْعَلَنِي مِنْ أَهْلِ الْقُرْآنِ الَّذِينَ هُمْ أَهْلُكَ وَخَاصَّتُكَ. من قالها حين يصبح وحين يمسى.',
    'count': '01'
  },
  {
    'text':
        'يَا حَيُّ يَا قيُّومُ برَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ أَبَدًا.',
    'count': '03'
  },
  {
    'text':
        'أَمْسَيْنا وَأَمْسَى الْمُلْكُ لِلَّهِ رَبِّ الْعَالَمِينَ، اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا وَأَعُوذُ بِكَ مِن شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا وَأَعُوذُ بِكَ مِنَ الْكُسْلِ وَسُوءِ الْكِبَرِ. اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْعَذَابِ فِي النَّارِ وَالْعَذَابِ فِي الْقَبْرِ.',
    'count': '01'
  },
  {
    'text':
        'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَالْأَرْضِ، رَبَّنَا وَرَبَّ كُلِّ شَيْءٍ، عَائِذٌ بِكَ مِنْ شَرِّ شَرِيرٍ نَفْسِهِ وَمِنْ شَرِّ الشَّيَاطِينِ، وَأَنْ يَحْضُرُونَ. رَبَّنَا عَائِذٌ بِكَ مِنْ شَرِّ الشَّيَاطِينِ وَعَائِذٌ بِكَ مِنْ شَرِّ شَرِيرٍ نَفْسِهِ وَمِنْ شَرِّ الشَّيَاطِينِ وَعَائِذٌ بِكَ مِنْ شَرِّ الشَّيَاطِينِ وَمِنْ شَرِّ الشَّيَاطِينِ.',
    'count': '01'
  },
  {
    'text':
        'أَعـوذُ بِكَلِمـاتِ اللّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ. من قالها ثلاث مرات حين يمسى.',
    'count': '03'
  },
  {
    'text':
        'اللَّهُمَّ صَلِّ وَسَلِّمْ عَلَى نَبِيِّنَا مُحَمَّدٍ صلى الله عليه وسلم. من قالها عشر مرات.',
    'count': '10'
  },
  {
    'text':
        'اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنَ الْفَتْنَةِ مَا ظَهَرَ مِنْهَا وَمَا بَطَنَ. من قالها ثلاث مرات.',
    'count': '03'
  },
  {
    'text':
        'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْفَقْرِ وَالْبُخْلِ وَالْجُبْنِ وَالْهَرَمِ وَعَذَابِ الْقَبْرِ وَالْفَتْنَةِ مِنْ دَرَجَةِ الْفَتْنَةِ.',
    'count': '03'
  },
  {
    'text':
        'أسْتَغْفِرُ اللهَ رَبِّي مِن كُلِّ ذَنبٍ أَذْنَبْتُهُ، أَسْتَغْفِرُ اللهَ رَبِّي مِن كُلِّ ذَنبٍ أَذْنَبْتُهُ. من قالها مائة مرة.',
    'count': '03'
  },
  {
    'text':
        'يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلالِ وَجْهِكَ وَعَظِيمِ سُلْطَانِكَ. من قالها عشر مرات.',
    'count': '03'
  },
  {
    'text':
        'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِير. من قالها مائة مرة.',
    'count': '100'
  },
  {
    'text':
        'اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِن شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ بِذُنُوبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ.',
    'count': '01'
  },
  {
    'text':
        'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ. من قالها مائة مرة.',
    'count': '01'
  },
];

final List<Map<String, String>> azkar = [
  {
    'text':
        'الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.',
    'count': '01'
  },
  {
    'text':
        'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.',
    'count': '01'
  },
  {
    'text':
        'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي.',
    'count': '01'
  }
];

final List<String> ad3ia = [
  "اللهم إنا نسألك بأنك أنت الله الأحد الصمد الذي لم يلد ولم يولد ولم يكن له كفوا أحد أن تنظر إلينا في ساعتنا هذه فتنزل علينا رحمة من عندك وحنانا من لدنك تغننا بها عن رحمة وحنان من سواك.",
  "إلهي... كيف أمتنع بالذنب من الدعاء ولا أراك تمتنع مع الذنب من العطاء؟ فإن غفرت فخير راحم أنت وإن عذبت فغير ظالم أنت.",
  "إلهي وقف السائلون ببابك، ولاذ الفقراء بجنابك ووقفت سفينة المساكين على ساحل كرمك، يرجون الجواز إلى ساحة رحمتك ونعمتك، إلهي إن كنت لاتكرم في هذا الشهر إلامن أخلص لك في صيامه فمن للمذنب المقصر إذا غرق في بحر ذنوبه وآثامه.",
  "رب اجعل أيامنا كلها سعادة رب بدد الأحزان وأبرئ الأسقام وابسط الأرزاق وحسن الأخلاق وانشر الرحمات وامح السيئات تباركت يا رب البريات يا رب الأرض والسماوات.",
  "إلهي إن كنت لاترحم إلا الطائعين فمن للعاصين، وإن كنت لاتقبل إلا العاملين فمن للمقصرين، إلهي ربح الصائمون، وفاز القائمون، ونجا المخلصون، ونحن عبيدك المذنبون فارحمنا برحمتك وجد علينا بفضلك ومنتك واغفر لنا أجمعين برحمتك يا أرحم الراحمين وصلي الله على سيدنا محمد وعلى آله وصحبه وسلم.",
  "ربنا اجعلنا لك ذكارين، لك شكارين، إليك أواهين منيبين، تقبل يا رب توبتنا، واغسل حوبتنا، وأجب دعواتنا، وثبت حجتنا، واسلل سخائم صدورنا، وعافنا واعف عنا.",
  "إلهنا لا تحرمنا من نبيك الشفاعة، و اجعل التقوى لنا أربح بضاعة، و لا تجعلنا فى شهرنا هذا من أهل التفريط و الإضاعة، و امنا من خوفنا يوم تقوم الساعه برحمتك يا أرحم الراحمين.",
  "اللهم اجعلنا من الذين يقولون فيعملون، ويعملون فيخلصون، ويخلصون فيقبلون، ويقبلون فينعمون، وينعمون، وينعمون فيشاهدون برحمتك يا أرحم الراحمين.",
  "إلهي، كيف أفرح وقد عصيتك، وكيف لا أفرح وقد عرفتك، وكيف أدعوك وأنا خاطىء، وكيف لا أدعوك وأنت كريم.",
  "يا ربنا لك الحمد كما ينبغي لجلال وجهك وعظيم سلطانك.",
  "اللهم لك الحمد كله وإليك يرجع الأمر كله.",
  "رب اجعل أيامنا كلها سعادة رب بدد الأحزان وأبرئ الأسقام وابسط الأرزاق وحسن الأخلاق وانشر الرحمات وامح السيئات تباركت يا رب البريات يا رب الأرض والسماوات.",
  "سبحان الله عدد ما خلق في السماء، وسبحان الله عدد ما خلق في الأرض، وسبحان الله عدد ما بين ذلك، وسبحان الله عدد ما هو خالق، والله أكبر مثل ذلك، والحمد لله مثل ذلك، ولا حول ولا قوة إلا بالله مثل ذلك.",
  "أعوذ بالله السميع العليم من الشيطان الرجيم، من نفخه، ونفثه، وهمزه.",
  "أعوذ بالله العظيم وبوجهه الكريم وسلطانه القديم من الشيطان الرجيم.",
  "سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته.",
  "اللهم لا تجعل الدنيا أكبر همنا ولا مبلغ علمنا.",
  "اللهم لا تدع لنا ذنبا إلا غفرته، ولا هما إلا فرجته، ولا عيبا إلا أصلحته، ولا حاجة لنا من حوائج الدنيا والآخرة لك فيها رضى ولنا فيها صلاح إلا يسرتها وقضيتها برحمتك يا أرحم الراحمين.",
  "ربنا يا واسع الفضل والرحمة تول أمرنا وأحسن خلاصنا، كن لنا وليا ومعينا وظهيرا ونصيرا، انصرنا بما تنصر به أولياءك، استعملنا فيما تشغل به أحبابك، دلنا بهدايتك لما يرضيك عنا وخذ بنواصينا إليه حل بيننا وبين ما يغضبك واصرفه عنا.",
  "يا أكرم الأكرمين نسألك بركتك وعطفك ولطفك وعافيتك وبرك ورحمتك وحبك، نعوذ بك من تقلبات القلوب والأيام اعصمنا من المعاصي والآثام، اشغلنا بخير ما يرضيك عنا، احمنا من أذى الناس، اشغلنا بك عن همومنا اجعل الآخرة كل همنا.",
  "ربنا يا وهاب نسألك بركات ما أنزلت من السماء وما أخرجت من الأرض، ربنا امنحنا ولا تمتحنا، أنزل رحمتك وبركتك وعافيتك علينا ولا تبتلنا، نعوذ بك من فراغ العين والقلب، نعوذ بك من حب الدنيا والتعلق بشيء منها أو الانشغال به عنك.",
  "اللهم أصلح لنا ديننا الذي هو عصمة أمرنا، وأصلح لنا دنيانا التي فيها معاشنا، وأصلح لنا آخرتنا التي إليها معادنا، واجعل الحياة زيادة لنا في كل خير، واجعل الموت راحة لنا من كل شر.",
  "اللهم إني أعوذ برضاك من سخطك، وبمعافاتك من عقوبتك، وبك منك، لا أحصي ثناءا عليك أنت كما أثنيت على نفسك.",
  "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري.",
  "ربنا لك الحمد على جمالك وجلالك وعظمتك وكبريائك، رب اعصمنا من الزلل، واجبر ما بنا من خلل، نعوذ بك من طول الأمل، وحبوط العمل.",
  "اللهم ربنا لك الحمد، أتمم النعمة والفضل والعافية والستر وجبر الكسر وزيادة البر وكبت الشر، يامن تزيد في الخلق ما تشاء زدنا قوة منك نتقوى بها على طاعتك، نلتمس عونا منك لنقوم بشكر نعمك، أطفئ لوعة قلوبنا بفيض من حبك ولطفك.",
  "اللهم إنا نشهد أنك لا تظلم ونشهد أن وعدك الحق، فأكرمنا ولا تهنا، وعافنا ولا تبتلنا، أنزل بمن ظلم وبغى واعتدى على إخواننا في سوريا سخطك وغضبك وعذابك، دمر أسلحتهم وفجرها فيهم، انتقم منهم.",
  "رب انصر أهل سوريا المظلومين والمستضعفين، احمهم وادفع عنهم، انتقم ممن ظلمهم وبغى عليهم، كف بأس أعدائهم واستأصل شأفتهم، نستغيث بك فأغثنا.",
  "يا رحمن الدنيا والآخرة ارحمنا وارض عنا في الدنيا والآخرة، اكتب لنا في هذه الدنيا حسنة إنا تبنا إليك، اجعلنا ممن يأتيك يوم القيامة بقلب سليم منيب.",
  "نسألك اللهم من خفي ألطافك، لطفا تهدي به قلوبنا فتفرح بالحق وتحبه وتألفه وترضاه وتثبت عليه، ولطفا تصرف به عنا ما يؤذينا أو يضرنا، ولطفا تدفع به عنا البلاء والفتن.",
  "اللهم ارزقنا شهادة في سبيلك، اكتب لنا أحسن موتة وأطيبها عندك، اجعلنا نحب لقاءك ونستعد له، ارزقنا أحسن عمل نختم به عمرنا، هون علينا السكرات، ألهمنا النطق بالشهادة عند خروج الروح، وأحضرنا ملائكة الرحمة بالبشرى بالجنة عند الموت.",
  "اللهم أرنا نعمك علينا واجعلنا من الحامدين الشاكرين وألهمنا الثناء بها عليك، ربنا أعنا بنعمتك على حسن عبادتك، نعوذ بك من كفر النعمة ومن سوء استقبالها أو استعمالها، رب زدنا ولا تحرمنا ولا تقطع عنا ما أوليتنا به.",
  "أسألك اللهم بأنك أنت الله ولم أكن بدعائك قط شقيا أن تجيرنا من النار وما يقرب إليها من قول وعمل ونسألك بوجهك الجنة بغير حساب أحينا في هذه الدنيا يا قيوم أسعد حياة ترضيك وارزقنا أكمل عمل ترفعه، وأصدق توبة تحبها.",
  "نسألك ربنا يا ذا المعروف الذي لا ينقطع أبدا أن تغمرنا بفيض من عين جودك تطيب به حياتنا ونسألك حنانا من لدنك تطمئن به قلوبنا ونبتهل إليك أن تلق علينا مودة منك تجعلنا نحبك ونحب ملائكتك ورسلك وجميع عبادك الصالحين.",
  "اللهم يا رفيق ارفع عنا البلاء، رب وفقنا للخير، اغفر لنا الذنوب، نسألك عيشة هنيئة وميتة سوية، نعوذ بك من سوء الكبر ومنقلب الفسوق."
];

final List<String> estghfar = [
  'سبحان الله',
  'الحمدلله',
  'لا اله الا الله',
  'الله اكبر',
];

List<String> englishQuranSurahs = [
  "Al-Fatiha",
  "Al-Baqarah",
  "Aal-E-Imran",
  "An-Nisa'",
  "Al-Ma'idah",
  "Al-An'am",
  "Al-A'raf",
  "Al-Anfal",
  "At-Tawbah",
  "Yunus",
  "Hud",
  "Yusuf",
  "Ar-Ra'd",
  "Ibrahim",
  "Al-Hijr",
  "An-Nahl",
  "Al-Isra",
  "Al-Kahf",
  "Maryam",
  "Ta-Ha",
  "Al-Anbiya",
  "Al-Hajj",
  "Al-Mu'minun",
  "An-Nur",
  "Al-Furqan",
  "Ash-Shu'ara",
  "An-Naml",
  "Al-Qasas",
  "Al-Ankabut",
  "Ar-Rum",
  "Luqman",
  "As-Sajda",
  "Al-Ahzab",
  "Saba",
  "Fatir",
  "Ya-Sin",
  "As-Saffat",
  "Sad",
  "Az-Zumar",
  "Ghafir",
  "Fussilat",
  "Ash-Shura",
  "Az-Zukhruf",
  "Ad-Dukhan",
  "Al-Jathiya",
  "Al-Ahqaf",
  "Muhammad",
  "Al-Fath",
  "Al-Hujurat",
  "Qaf",
  "Adh-Dhariyat",
  "At-Tur",
  "An-Najm",
  "Al-Qamar",
  "Ar-Rahman",
  "Al-Waqi'a",
  "Al-Hadid",
  "Al-Mujadila",
  "Al-Hashr",
  "Al-Mumtahina",
  "As-Saff",
  "Al-Jumu'a",
  "Al-Munafiqun",
  "At-Taghabun",
  "At-Talaq",
  "At-Tahrim",
  "Al-Mulk",
  "Al-Qalam",
  "Al-Haqqah",
  "Al-Ma'arij",
  "Nuh",
  "Al-Jinn",
  "Al-Muzzammil",
  "Al-Muddathir",
  "Al-Qiyamah",
  "Al-Insan",
  "Al-Mursalat",
  "An-Naba'",
  "An-Nazi'at",
  "Abasa",
  "At-Takwir",
  "Al-Infitar",
  "Al-Mutaffifin",
  "Al-Inshiqaq",
  "Al-Buruj",
  "At-Tariq",
  "Al-A'la",
  "Al-Ghashiyah",
  "Al-Fajr",
  "Al-Balad",
  "Ash-Shams",
  "Al-Lail",
  "Ad-Duha",
  "Ash-Sharh",
  "At-Tin",
  "Al-Alaq",
  "Al-Qadr",
  "Al-Bayyina",
  "Az-Zalzalah",
  "Al-Adiyat",
  "Al-Qari'a",
  "At-Takathur",
  "Al-Asr",
  "Al-Humazah",
  "Al-Fil",
  "Quraysh",
  "Al-Ma'un",
  "Al-Kawthar",
  "Al-Kafirun",
  "An-Nasr",
  "Al-Masad",
  "Al-Ikhlas",
  "Al-Falaq",
  "An-Nas"
];
