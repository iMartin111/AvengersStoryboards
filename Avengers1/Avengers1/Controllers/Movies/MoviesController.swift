//
//  MoviesController.swift
//  Avengers1
//
//  Created by Yan Akhrameev on 05/10/21.
//

import Foundation


class MoviesController {
    
    private var movies: [Avenger] = moviesList
    
    var count: Int {
        return movies.count
    }
    
    func currentMovie(for index: Int) -> Avenger {
        return movies[index]
    }
}
