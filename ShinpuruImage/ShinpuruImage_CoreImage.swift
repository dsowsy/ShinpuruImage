//
//  ShinpuruImage_CoreImage.swift
//  ShinpuruImage
//
//  Created by Simon Gladman on 21/05/2015.
//  Copyright (c) 2015 Simon Gladman. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.

//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>

import UIKit

// MARK: Photo Effects

extension UIImage
{
    func SIPhotoEffectNoir() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectNoir", keyValuePairs: [])
    }

    func SIPhotoEffectChrome() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectChrome", keyValuePairs: [])
    }

    func SIPhotoEffectFade() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectFade", keyValuePairs: [])
    }

    func SIPhotoEffectInstant() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectInstant", keyValuePairs: [])
    }

    func SIPhotoEffectMono() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectMono", keyValuePairs: [])
    }

    func SIPhotoEffectProcess() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectProcess", keyValuePairs: [])
    }

    func SIPhotoEffectTonal() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectTonal", keyValuePairs: [])
    }

    func SIPhotoEffectTransfer() -> UIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectTransfer", keyValuePairs: [])
    }
    
    // MARK: CICategoryColorEffect
    
    func SIFalseColor(color0 color0: UIColor, color1: UIColor) -> UIImage
    {
        let inputColor0 = KeyValuePair(key: "inputColor0", value: CIColor(color: color0))
        let inputColor1 = KeyValuePair(key: "inputColor1", value: CIColor(color: color1))
        
        let filterName = "CIFalseColor"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputColor0, inputColor1])
    }
    
    func SIPosterize(levels levels: Int) -> UIImage
    {
        let inputLevels = KeyValuePair(key: "inputLevels", value: levels)
        
        let filterName = "CIColorPosterize"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputLevels])
    }
    
    func SIMonochrome(color color: UIColor, intensity: Float) -> UIImage
    {
        let inputColor = KeyValuePair(key: "inputColor", value: CIColor(color: color))
        let inputIntensity = KeyValuePair(key: "inputIntensity", value: intensity)
        
        let filterName = "CIColorMonochrome"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputColor, inputIntensity])
    }
    
    // MARK: CICategoryStylize
    
    func SIBloom(radius radius: Float, intensity: Float) -> UIImage
    {
        let inputRadius = KeyValuePair(key: "inputRadius", value: radius)
        let inputIntensity = KeyValuePair(key: "inputIntensity", value: intensity)
        
        let filterName = "CIBloom"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputRadius, inputIntensity])
    }

    func SIGloom(radius radius: Float, intensity: Float) -> UIImage
    {
        let inputRadius = KeyValuePair(key: "inputRadius", value: radius)
        let inputIntensity = KeyValuePair(key: "inputIntensity", value: intensity)
        
        let filterName = "CIGloom"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputRadius, inputIntensity])
    }
    
    func SIPixellate(scale scale: Float) -> UIImage
    {
        let inputScale = KeyValuePair(key: "inputScale", value: scale)
        
        let filterName = "CIPixellate"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputScale])
    }
    
    // MARK: CICategoryBlur
    
    func SIGaussianBlur(radius radius: Float) -> UIImage
    {
        let inputRadius = KeyValuePair(key: "inputRadius", value: radius)
        
        let filterName = "CIGaussianBlur"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputRadius])
    }
    
    // MARK: CICategoryColorAdjustment
    
    func SIColorControls(saturation saturation: Float, brightness: Float, contrast: Float) -> UIImage
    {
        let inputSaturation = KeyValuePair(key: "inputSaturation", value: saturation)
        let inputBrightness = KeyValuePair(key: "inputBrightness", value: brightness)
        let inputContrast = KeyValuePair(key: "inputContrast", value: contrast)
        
        let filterName = "CIColorControls"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputSaturation, inputBrightness, inputContrast])
    }
    
    func SIExposureAdjust(ev ev: Float) -> UIImage
    {
        let inputEV = KeyValuePair(key: "inputEV", value: ev)
        
        let filterName = "CIExposureAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputEV])
    }

    func SIGammaAdjust(power power: Float) -> UIImage
    {
        let inputPower = KeyValuePair(key: "inputPower", value: power)
        
        let filterName = "CIGammaAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputPower])
    }

    func SIHueAdjust(power power: Float) -> UIImage
    {
        let inputAngle = KeyValuePair(key: "inputAngle", value: power)
        
        let filterName = "CIHueAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputAngle])
    }
    
    func SIVibrance(amount amount: Float) -> UIImage
    {
        let inputAmount = KeyValuePair(key: "inputAmount", value: amount)
        
        let filterName = "CIVibrance"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputAmount])
    }
    
    func SIWhitePointAdjust(color color: UIColor) -> UIImage
    {
        let inputColor = KeyValuePair(key: "inputColor", value: CIColor(color: color))
        
        let filterName = "CIWhitePointAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputColor])
    }
}

// MARK: Utilities

import CoreImage
import Foundation

class ShinpuruCoreImageHelper
{

    static let ciContext = CIContext(options: nil)
    static let ciContextFast = CIContext(EAGLContext: EAGLContext(API: EAGLRenderingAPI.OpenGLES2), options: [kCIContextWorkingColorSpace: NSNull()])
    
    static func applyFilter(image: UIImage, filterName: String, keyValuePairs: [KeyValuePair]) -> UIImage
    {
        let ciFilter = CIFilter(name: filterName)
        
        let inputImage = KeyValuePair(key: kCIInputImageKey, value: CIImage(image: image)!)
        ciFilter!.setValue(inputImage.value, forKey: inputImage.key)
        
        keyValuePairs.forEach { (k,v) in
            ciFilter!.setValue(v, forKey:k)
        }
        
        let filteredImageData = ciFilter!.valueForKey(kCIOutputImageKey) as! CIImage!
        let filteredImageRef = ShinpuruCoreImageHelper.ciContext.createCGImage(filteredImageData, fromRect: filteredImageData.extent)

        let filteredImage = UIImage(CGImage: filteredImageRef)
        
        return filteredImage
    }
}

typealias SIFastChainableImage = CIImage
typealias KeyValuePair = (key:String, value: AnyObject)
