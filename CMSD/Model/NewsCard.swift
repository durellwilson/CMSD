//
//  NewsCard.swift
//  CMSD
//
//  Created by Sabit Islam on 11/13/23.
//
import Foundation

struct NewsArticle: Identifiable {
    let id = UUID()
    var title: String
    var subheading: String
    var url: String
    var imageURL: String?
   
}
var articles = [
NewsArticle(title: "Register now for Spring 2024!", subheading: "Spring registration is now open! Classes will fill quickly, so be sure to secure your place!", url: "https://www.cmsd.msu.edu/news/bleuck77e95royov18qsrsrhitz6jy"),
NewsArticle(title: "Hear what our parents are saying about CMSD!", subheading: "Community Music School-Detroit has been providing high-quality music education to students of all ages and skill levels for years, and the impact of the program has not gone unnoticed by the parents of our students.", url: "https://www.cmsd.msu.edu/news/hear-what-our-parents-are-saying-about-cmsd"),
NewsArticle(title: "MSUFCU Makes Major Gift to MSU College of Music", subheading: "The College of Music at Michigan State University is thrilled to announce a $1 million gift from the MSU Federal Credit Union (MSUFCU)", url: "https://www.cmsd.msu.edu/news/msufcu-makes-major-gift-to-msu-college-of-music", imageURL: "https://images.squarespace-cdn.com/content/v1/6375509e50ad871b94ccc165/a16ee853-55cb-45f3-954c-e2f019a1083f/200A0555.jpg?format=2500w")]
