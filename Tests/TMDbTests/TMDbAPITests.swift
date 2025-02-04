@testable import TMDb
import XCTest

final class TMDbAPITests: XCTestCase {

    var tmdb: TMDbAPI!
    var certificationService: MockCertificationService!
    var companyService: MockCompanyService!
    var configurationService: MockConfigurationService!
    var discoverService: MockDiscoverService!
    var movieService: MockMovieService!
    var personService: MockPersonService!
    var searchService: MockSearchService!
    var trendingService: MockTrendingService!
    var tvShowService: MockTVShowService!
    var tvShowSeasonService: MockTVShowSeasonService!
    var tvShowEpisodeService: MockTVShowEpisodeService!
    var genreService: MockGenreService!
    var watchProviderService: MockWatchProviderService!

    override func setUp() {
        super.setUp()
        certificationService = MockCertificationService()
        companyService = MockCompanyService()
        configurationService = MockConfigurationService()
        discoverService = MockDiscoverService()
        genreService = MockGenreService()
        movieService = MockMovieService()
        personService = MockPersonService()
        searchService = MockSearchService()
        trendingService = MockTrendingService()
        tvShowService = MockTVShowService()
        tvShowSeasonService = MockTVShowSeasonService()
        tvShowEpisodeService = MockTVShowEpisodeService()
        watchProviderService = MockWatchProviderService()
        tmdb = TMDbAPI(
            certificationService: certificationService,
            companyService: companyService,
            configurationService: configurationService,
            discoverService: discoverService,
            genreService: genreService,
            movieService: movieService,
            personService: personService,
            searchService: searchService,
            trendingService: trendingService,
            tvShowService: tvShowService,
            tvShowSeasonService: tvShowSeasonService,
            tvShowEpisodeService: tvShowEpisodeService,
            watchProviderService: watchProviderService
        )
    }

    override func tearDown() {
        tmdb = nil
        certificationService = nil
        companyService = nil
        configurationService = nil
        discoverService = nil
        genreService = nil
        movieService = nil
        personService = nil
        searchService = nil
        trendingService = nil
        tvShowService = nil
        tvShowSeasonService = nil
        tvShowEpisodeService = nil
        watchProviderService = nil
        super.tearDown()
    }

    func testInit() {
        XCTAssertIdentical(tmdb.certifications as? MockCertificationService, certificationService)
        XCTAssertIdentical(tmdb.companies as? MockCompanyService, companyService)
        XCTAssertIdentical(tmdb.configurations as? MockConfigurationService, configurationService)
        XCTAssertIdentical(tmdb.discover as? MockDiscoverService, discoverService)
        XCTAssertIdentical(tmdb.genres as? MockGenreService, genreService)
        XCTAssertIdentical(tmdb.movies as? MockMovieService, movieService)
        XCTAssertIdentical(tmdb.people as? MockPersonService, personService)
        XCTAssertIdentical(tmdb.search as? MockSearchService, searchService)
        XCTAssertIdentical(tmdb.trending as? MockTrendingService, trendingService)
        XCTAssertIdentical(tmdb.tvShows as? MockTVShowService, tvShowService)
        XCTAssertIdentical(tmdb.tvShowSeasons as? MockTVShowSeasonService, tvShowSeasonService)
        XCTAssertIdentical(tmdb.tvShowEpisodes as? MockTVShowEpisodeService, tvShowEpisodeService)
        XCTAssertIdentical(tmdb.watchProviders as? MockWatchProviderService, watchProviderService)
    }

}
