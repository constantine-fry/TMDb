import Foundation

final class TMDbDiscoverService: DiscoverService {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func movies(sortedBy: MovieSort?, withPeople people: [Person.ID]?, withGenres genres: [Genre.ID]? = nil, page: Int?) async throws -> MoviePageableList {
        try await apiClient.get(endpoint: DiscoverEndpoint.movies(sortedBy: sortedBy, people: people, genres: genres, page: page))
    }

    func tvShows(sortedBy: TVShowSort?, withGenres genres: [Genre.ID]? = nil, page: Int?) async throws -> TVShowPageableList {
        try await apiClient.get(endpoint: DiscoverEndpoint.tvShows(sortedBy: sortedBy, genres: genres, page: page))
    }

}
