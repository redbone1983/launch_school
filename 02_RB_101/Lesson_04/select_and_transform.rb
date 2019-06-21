# Selection & Transformation

def selected_vowels(str)
  selected_chars = []
  str.each_char do |current_char|
    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end
  end
  selected_chars
end

str = "spaghetti and meatballs"

p selected_vowels(str)
number_of_vowels = selected_vowels(str).size
puts number_of_vowels

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  selected = {}
  hsh.each do |key, val|
    if val == 'Fruit'
      selected[key] = val
    end
  end
  selected
end

p select_fruit(produce)