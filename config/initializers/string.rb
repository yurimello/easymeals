class String
  def plural
    self.pluralize(I18n.locale)
  end
end