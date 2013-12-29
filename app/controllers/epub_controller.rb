class EpubController < ApplicationController
  def index
    require 'epub/parser'
    # coding: utf-8
    @jap = EPUB::Parser.parse(Rails.public_path + 'h1-j.epub')
    @eng = EPUB::Parser.parse(Rails.public_path + 'h1-e.epub')
  end
end
