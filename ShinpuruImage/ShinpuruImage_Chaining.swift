//
//  ShinpuruImage_Chaining.swift
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
//
// Requires ShinpuruImage_CoreImage.swift

import UIKit

// MARK: Photo Effects

extension CIImage
{
    func SIPhotoEffectNoir() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectNoir", keyValuePairs: [])
    }
    
    func SIPhotoEffectChrome() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectChrome", keyValuePairs: [])
    }
    
    func SIPhotoEffectFade() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectFade", keyValuePairs: [])
    }
    
    func SIPhotoEffectInstant() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectInstant", keyValuePairs: [])
    }
    
    func SIPhotoEffectMono() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectMono", keyValuePairs: [])
    }
    
    func SIPhotoEffectProcess() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectProcess", keyValuePairs: [])
    }
    
    func SIPhotoEffectTonal() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectTonal", keyValuePairs: [])
    }
    
    func SIPhotoEffectTransfer() -> CIImage
    {
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: "CIPhotoEffectTransfer", keyValuePairs: [])
    }
    
    // MARK: CICategoryColorEffect
    
    func SIFalseColor(color0 color0: UIColor, color1: UIColor) -> CIImage
    {
        let inputColor0 = KeyValuePair(key: "inputColor0", value: CIColor(color: color0))
        let inputColor1 = KeyValuePair(key: "inputColor1", value: CIColor(color: color1))
        
        let filterName = "CIFalseColor"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputColor0, inputColor1])
    }
    
    func SIPosterize(levels levels: Int) -> CIImage
    {
        let inputLevels = KeyValuePair(key: "inputLevels", value: levels)
        
        let filterName = "CIColorPosterize"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputLevels])
    }
    
    func SIMonochrome(color color: UIColor, intensity: Float) -> CIImage
    {
        let inputColor = KeyValuePair(key: "inputColor", value: CIColor(color: color))
        let inputIntensity = KeyValuePair(key: "inputIntensity", value: intensity)
        
        let filterName = "CIColorMonochrome"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputColor, inputIntensity])
    }
    
    // MARK: CICategoryStylize
    
    func SIBloom(radius radius: Float, intensity: Float) -> CIImage
    {
        let inputRadius = KeyValuePair(key: "inputRadius", value: radius)
        let inputIntensity = KeyValuePair(key: "inputIntensity", value: intensity)
        
        let filterName = "CIBloom"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputRadius, inputIntensity])
    }
    
    func SIGloom(radius radius: Float, intensity: Float) -> CIImage
    {
        let inputRadius = KeyValuePair(key: "inputRadius", value: radius)
        let inputIntensity = KeyValuePair(key: "inputIntensity", value: intensity)
        
        let filterName = "CIGloom"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputRadius, inputIntensity])
    }
    
    func SIPixellate(scale scale: Float) -> CIImage
    {
        let inputScale = KeyValuePair(key: "inputScale", value: scale)
        
        let filterName = "CIPixellate"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputScale])
    }
    
    // MARK: CICategoryBlur
    
    func SIGaussianBlur(radius radius: Float) -> CIImage
    {
        let inputRadius = KeyValuePair(key: "inputRadius", value: radius)
        
        let filterName = "CIGaussianBlur"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputRadius])
    }
    
    // MARK: CICategoryColorAdjustment
    
    func SIColorControls(saturation saturation: Float, brightness: Float, contrast: Float) -> CIImage
    {
        let inputSaturation = KeyValuePair(key: "inputSaturation", value: saturation)
        let inputBrightness = KeyValuePair(key: "inputBrightness", value: brightness)
        let inputContrast = KeyValuePair(key: "inputContrast", value: contrast)
        
        let filterName = "CIColorControls"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputSaturation, inputBrightness, inputContrast])
    }
    
    func SIExposureAdjust(ev ev: Float) -> CIImage
    {
        let inputEV = KeyValuePair(key: "inputEV", value: ev)
        
        let filterName = "CIExposureAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputEV])
    }
    
    func SIGammaAdjust(power power: Float) -> CIImage
    {
        let inputPower = KeyValuePair(key: "inputPower", value: power)
        
        let filterName = "CIGammaAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputPower])
    }
    
    func SIHueAdjust(power power: Float) -> CIImage
    {
        let inputAngle = KeyValuePair(key: "inputAngle", value: power)
        
        let filterName = "CIHueAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputAngle])
    }
    
    func SIVibrance(amount amount: Float) -> CIImage
    {
        let inputAmount = KeyValuePair(key: "inputAmount", value: amount)
        
        let filterName = "CIVibrance"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputAmount])
    }
    
    func SIWhitePointAdjust(color color: UIColor) -> CIImage
    {
        let inputColor = KeyValuePair(key: "inputColor", value: CIColor(color: color))
        
        let filterName = "CIWhitePointAdjust"
        
        return ShinpuruCoreImageHelper.applyFilter(self, filterName: filterName, keyValuePairs: [inputColor])
    }
    
    // MARK: To UIImage
    
    func toUIImage() -> UIImage
    {
        let filteredImageRef = ShinpuruCoreImageHelper.ciContextFast.createCGImage(self, fromRect: self.extent)
        let filteredImage = UIImage(CGImage: filteredImageRef)
        
        return filteredImage
    }
}

// MARK: Utilities

extension ShinpuruCoreImageHelper
{    
    static func applyFilter(image: CIImage, filterName: String, keyValuePairs: [KeyValuePair]) -> CIImage
    {
        let ciFilter = CIFilter(name: filterName)
        
        let inputImage = KeyValuePair(key: kCIInputImageKey, value: image)
        ciFilter!.setValue(inputImage.value, forKey: inputImage.key)
        
        keyValuePairs.forEach { (k,v) in
            ciFilter!.setValue(v, forKey:k)
        }
        
        // keyValuePairs.map({ ciFilter!.setValue($0.value, forKey: $0.key) })
        
        return ciFilter!.valueForKey(kCIOutputImageKey) as! CIImage
    }
}

