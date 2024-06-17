aut = {
    'url': "https://www.getontracks.org",
}

Download = {
    'Download': "xpath=//a[contains(text(),'Download')]"
}

paginaDownload = {
    'Tracks2.6.1': "//h1[@class='entry-title']/a[contains(text(),'Tracks 2.6.1')]",
    #'LatestVersion': "xpath=//a[contains(@href, '://github.com/TracksApp/tracks/archive/v2.6.1.zip')and contains(text(),'here')]",
    #'PreviousVersion': "xpath=//a[contains(@href,'://github.com/TracksApp/tracks/archive/v2.6.0.zip')and contains(text(),'here')]"
    'LatestVersion': "xpath=//a[contains(text(),'here')][0]",
    'PreviousVersion': "xpath=//a[contains(text(),'here')][1]"
}
