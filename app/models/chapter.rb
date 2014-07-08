class Chapter

  def self.all
    [
      'Preface',
      'Motions',
      'Insert Mode',
      'Delete Action',
      'Change Action',
      'Text Objects',
      'Replace and Substitute',
      'Searching',
      'Yank and Put',
      'Selections',
      'File Management',
      'Staying Dry',
      'Custom Modifications',
      'Color Schemes',
      'Plugins',
      'Additional Resources',
      'Conclusion',
    ]
  end

  def self.all_chapters
    self.all.map { |name| Chapter.new(name) }
  end

  attr_reader :name

  def initialize(name)
    @name = better_titleize(name)
  end

  def full_name
    return name if index == 0
    "Chapter #{index}: #{name}"
  end

  def text
    File.new("chapters/#{name.parameterize}.md").read
  end

  def next
    Chapter.all[index + 1] if index < Chapter.all.length - 1
  end

  def previous
    Chapter.all[index - 1] if index > 0
  end

  private

  def index
    @index ||= Chapter.all.index(name)
  end

  def better_titleize(name)
    name.titleize.tap do |name|
      TITLE_WORDS.each do |pattern|
        name.sub!(/\s#{pattern[:word]}(\s|\z)/, " " + pattern[:replacement] + " ")
      end
    end.strip
  end

  TITLE_WORDS = [
    { word: 'In', replacement: 'in' },
    { word: 'Api', replacement: 'API' },
    { word: 'The', replacement: 'the' },
    { word: 'A', replacement: 'a' },
    { word: 'Ii', replacement: 'II' },
    { word: 'To', replacement: 'to' },
    { word: 'And', replacement: 'and' },
  ]

end
