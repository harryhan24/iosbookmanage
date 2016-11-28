//
//  ViewController.swift
//  VisualBookManager
//
//  Created by DongSu Han on 2016. 11. 29..
//  Copyright © 2016년 DongSuHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //전역변수화
    let myBook = BookManager()
    
    @IBOutlet var outputTextView:UITextView! //출력받을 내용 선언
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let book1 = Book()
        book1.name = "햄릿";
        book1.genre = "비극";
        book1.author = "쎄익스피어";
        
        let book2 = Book()
        book2.name = "누구를 위하여 종을 울리나";
        book2.genre = "전쟁소설";
        book2.author = "해밍웨이";
        
        let book3 = Book()
        book3.name = "죄와벌";
        book3.genre = "사실주의";
        book3.author = "톨스토이";
        

        
        myBook.addBook(book1);
        myBook.addBook(book2);
        myBook.addBook(book3);
        
    }
    
    //IB = Interface Builder
    //IBAction 커넥하기위한 함수
    @IBAction func showAllBookAction(_ sender:AnyObject){
        //print(myBook.showAllBook());
        outputTextView.text = myBook.showAllBook();
    }
    
    @IBAction func addBookAction(_ sender:AnyObject){
        let bookTemp = Book();
        
        bookTemp.name       = nameTextField.text! //값 가져오기
        bookTemp.author     = authorTextField.text! //값 가져오기
        bookTemp.genre      = genreTextField.text! //값 가져오기
        
        myBook.addBook(bookTemp);
        outputTextView.text = "도서등록 성공!";
    }
    
    @IBAction func findBookAction(_ sender:AnyObject){
        let resultBook = myBook.findBook(nameTextField.text!);
        if resultBook != nil{
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "찾을 수 없습니다."
        }
    }

    @IBAction func removeBookAction(_ sender:AnyObject){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

