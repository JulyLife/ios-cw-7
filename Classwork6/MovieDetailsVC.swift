//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by ghanima on 10/5/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var pgLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var actor1ImageView: UIImageView!
    @IBOutlet weak var actor2ImageView: UIImageView!
    @IBOutlet weak var actor3ImageView: UIImageView!

    @IBOutlet weak var actor1NameLabel: UILabel!
    @IBOutlet weak var actor2NameLabel: UILabel!
    @IBOutlet weak var actor3NameLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
print("This is movie details!")
        
        prepareMovieData()
        
        // Do any additional setup after loading the view.
    }
    func prepareMovieData(){
        let movie = MarvelMovieData[0]
        
        movieImage.image = UIImage(named: movie.movieName)
        pgLabel.text = movie.pgRating
        ratingLabel.text = movie.rating.description
        //\(""), String () / ""
        yearLabel.text = movie.movieReleaseDate.description
        actor1ImageView.image = UIImage(named: movie.actors[0])
        actor2ImageView.image = UIImage(named: movie.actors[1])
        actor3ImageView.image = UIImage(named: movie.actors[2])
        actor1NameLabel.text = movie.actors[0]
        actor2NameLabel.text = movie.actors[1]
        actor3NameLabel.text = movie.actors[2]

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
