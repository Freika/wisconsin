sources_ru = Source.create(
  [
    { language: 'ru', rss: 'http://eu.battle.net/d3/ru/feed/news', name: '[Blizzard] Diablo 3', url: 'http://eu.battle.net/d3/ru/' },
    { language: 'ru', rss: 'http://eu.battle.net/sc2/ru/feed/news', name: '[Blizzard] StarCraft 2', url: 'http://eu.battle.net/sc2/ru /'},
    { language: 'ru', rss: 'http://eu.battle.net/wow/ru/feed/news', name: '[Blizzard] World of Warcraft', url: 'http://eu.battle.net/wow/ru/' },
    { language: 'ru', rss: 'http://www.noob-club.ru/rss2.xml', name: 'NoobClub', url: 'http://www.noob-club.ru/' },
    { language: 'ru', rss: 'http://feeds.feedburner.com/wowraider_ru', name: 'WowRaider', url: 'http://wowraider.net/news/ru/' },
    { language: 'ru', rss: 'http://mmoboom.ru/rss', name: 'MmoBoom', url: 'http://mmoboom.ru/' },
    { language: 'ru', rss: 'http://forums.goha.ru/feed/rss2/53.xml', name: 'WoW.ru', url: 'http://wow.ru' },
    { language: 'ru', rss: 'http://www.mmohelper.ru/feed/', name: 'MmoHelper', url: 'http://www.mmohelper.ru/' },
    { language: 'ru', rss: 'http://mmo-champion.ru/news/rss/', name: 'mmo-champion (russian)', url: 'http://mmo-champion.ru/' },
    { language: 'ru', rss: 'http://glasscannon.ru/feed', name: 'Glass Cannon', url: 'http://glasscannon.ru/' }

  ]
)

sources_en = Source.create(
  [
    { rss: 'http://eu.battle.net/d3/en/feed/news', language: 'en', name: '[Blizzard] Diablo 3', url: 'http://eu.battle.net/d3/en/' },
    { rss: 'http://eu.battle.net/sc2/en/feed/news', language: 'en', name: '[Blizzard] StarCraft 2', url: 'http://eu.battle.net/sc2/en/' },
    { rss: 'http://eu.battle.net/wow/en/feed/news', language: 'en', name: '[Blizzard] World of Warcraft', url: 'http://eu.battle.net/wow/en/' },
    { rss: 'http://us.blizzard.com/en-us/news/rss.xml', language: 'en', name: 'Blizzard News', url: 'http://us.blizzard.com/en-us/' }
  ]
)

