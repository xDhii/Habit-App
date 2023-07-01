//
//  BoxChartView.swift
//  Habit
//
//  Created by Adriano Valumin on 01/07/23.
//

import Charts
import SwiftUI

struct BoxChartView: UIViewRepresentable {
  typealias UIViewType = LineChartView
  
  @Binding var entries: [ChartDataEntry]
  @Binding var dates: [String]
  
  func makeUIView(context: Context) -> LineChartView {
    let uiView = LineChartView()
    
    uiView.legend.enabled = false
    uiView.chartDescription.enabled = false
    uiView.xAxis.granularity = 1
    uiView.xAxis.labelPosition = .bottom
    uiView.rightAxis.enabled = false
    uiView.leftAxis.axisLineColor = .red
    uiView.animate(yAxisDuration: 0.7)
        
    uiView.data = addData()
    
    return uiView
  }
  
  func updateUIView(_ uiView: LineChartView, context: Context) {
    
  }
  
  func addData() -> LineChartData {
    
    let colors = [UIColor.white.cgColor, UIColor.orange.cgColor]
    let colorSpace = CGColorSpaceCreateDeviceRGB()
    let colorLocations: [CGFloat] = [0, 1]
    
    guard let gradient = CGGradient(colorsSpace: colorSpace,
                                    colors: colors as CFArray,
                                    locations: colorLocations) else { return LineChartData() }
    
    let dataSet = LineChartDataSet(entries: entries, label: "")
        
    dataSet.mode = .cubicBezier
    dataSet.lineWidth = 2
    dataSet.circleRadius = 4
    dataSet.setColor(.orange)
    dataSet.drawFilledEnabled = true
    dataSet.circleColors = [.red]
    dataSet.valueColors = [.blue]
    dataSet.drawHorizontalHighlightIndicatorEnabled = false
    dataSet.fill = LinearGradientFill(gradient: gradient, angle: 90.0)
    
    return LineChartData(dataSet: dataSet)
  }
  
}

struct BoxChartView_Previews: PreviewProvider {
  static var previews: some View {
    BoxChartView(entries: .constant([
      ChartDataEntry(x: 1, y: 2),
      ChartDataEntry(x: 2, y: 7),
      ChartDataEntry(x: 3, y: 4)
    ]), dates: .constant([
      "20/06/2023",
      "21/06/2023",
      "22/06/2023"
    ]))
      .frame(maxWidth: .infinity, maxHeight: 350)
  }
}
