Book.destroy_all

Book.create!([
  { title: "The Well Grounded Rubyist", author: "David A. Black" },
  { title: "Practical Object Oriented Design: An Agile Primer Using Ruby",
    author: "Sandi Metz" },
  { title: "Eloquent Ruby", author: "Russ Olsen" },
  { title: "Metaprogramming in Ruby", author: "Paolo Perrota"}])

e = Book.find_by(title: "Eloquent Ruby")
e.notes.create!([
  { title: "How Eloquent!", content: "This is the most eloquent book I've ever read" },
  { title: "I see through the lies of the reviewer",
    content: "The guy above me is a liar. He's probably a jedi."}])
