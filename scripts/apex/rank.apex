// RankHandler test = new RankHandler();
// system.debug(test.rankPrice(5));
// system.debug(test.rankPrice(3));
// system.debug(test.rankPrice(1));
// system.debug(test.rankPrice(2));
// system.debug(test.rankPrice(11));

RankHandler test = new RankHandler();
system.debug(test.rankPrizeSwitch(1));
system.debug(test.rankPrizeSwitch(2));
system.debug(test.rankPrizeSwitch(3));
system.debug(test.rankPrizeSwitch(5));
system.debug(test.rankPrizeSwitch(13));

list<integer> listInteger = new list<Integer>{10,12,14,15,15};
listInteger[4]=30;
system.debug(listInteger);