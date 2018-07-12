//
//  ViewController.swift
//  二分查找
//
//  Created by lemo on 2018/7/12.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let index = binarySearch(array: [1, 3, 4, 6, 8, 9, 10, 23, 35, 45, 62], item: 10)
//        print(index ?? "不存在 !")
        
        let index = binarySearch(array: ["a", "c", "d", "f", "x", "y", "z"], item: "d")
        print(index ?? "不存在")
    }
    /*
       要求: 搜索有序数组是否存在某个Int值,存在返回下标,不存在返回 nil
    func binarySearch(array: Array<Int>, item: Int) -> Int?{
        // 选取区域的两端的索引
        var low = 0
        var high = array.count - 1
        // 判断停止条件
        while low <= high {
            let mid = low + (high - low) / 2
            let guess = array[mid]
            if guess == item {
                return mid
            }
            if guess > item {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return nil
    }
 */
    
    /*
     要求: 搜索有序数组是否存在某个Int值,存在返回下标和循环的次数,否侧返回次数和不存在
    func binarySearch(array: Array<Int>, item: Int) -> [String: Int]? {
        // 两端索引标记
        var low = 0
        var high = array.count - 1
        var number = 0
        var info: [String: Int] = [:]
        
        while low <= high {
            number = number + 1
            let mid = low + (high - low) / 2
            let guess = array[mid]
            if guess == item {
                info["下标"] = mid
                info["步数"] = number
                return info
            }
            if guess > item {
                high = mid - 1
            }
            if guess < item {
                low = mid + 1
            }
        }
        info["不存在"] = -1
        info["步数"] = number
        return info
    }
 */
    
    // 通用类型二分索引, 可以比较任何遵循Comparable协议的类型数据
    func binarySearch<T: Comparable>(array: Array<T>, item: T) -> Int? {
        var low = 0
        var high = array.count - 1
        while low <= high {
            let mid = low + (high - low) / 2
            let guess = array[mid]
            if guess == item {
                return mid
            }
            if guess > item {
                high = mid - 1
            }
            if guess < item {
                low = mid + 1
            }
        }
        return nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

