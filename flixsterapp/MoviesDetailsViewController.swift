    //
    //  MoviesDetailsViewController.swift
    //  flixsterapp
    //
    //  Created by Mac Cooper on 2/9/20.
    //  Copyright © 2020 Mac Cooper. All rights reserved.
    //

    import UIKit
    import AlamofireImage

    class MoviesDetailsViewController: UIViewController {

        
        @IBOutlet weak var backdropView: UIImageView!
        
        @IBOutlet weak var posterView: UIImageView!
        
        @IBOutlet weak var titleLabel: UILabel!
        
        @IBOutlet weak var sysnopsisLabel: UILabel!
        
        var movie: [String:Any]!
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            //print(movie["title"])
            titleLabel.text = movie["title"] as? String
            titleLabel.sizeToFit()
            sysnopsisLabel.text = movie["overview"] as? String
            sysnopsisLabel.sizeToFit()
            
            let baseUrl = "https://image.tmdb.org/t/p/w185"
            let posterPath = movie["poster_path"] as! String
            let posterUrl = URL(string: baseUrl + posterPath)
                   
            posterView.af_setImage(withURL: posterUrl!)
            //////////////////////////////////////////////////////////////////////////////////////////////////
            
            let backdropPath = movie["backdrop_path"] as! String
            let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
                   
            backdropView.af_setImage(withURL: backdropUrl!)
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
