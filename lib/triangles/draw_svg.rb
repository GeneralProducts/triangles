require "nokogiri"

class DrawSVG
  def initialize(polygons)
    @polygons = polygons
  end

  def content
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.svg(xmlns: "http://www.w3.org/2000/svg") do
        xml.desc "Triangles"
        polygons.each do |polygon|
          xml.polygon polygon.to_svg
        end
      end
    end
    builder.to_xml
  end

  def call
    filename = 'output.svg'
    doc = Nokogiri::XML(content)
    File.write(filename, doc.to_xml)
  end

  attr_reader :polygons
end
