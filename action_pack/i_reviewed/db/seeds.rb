Book.destroy_all

Book.create!([
  { title: "The Well Grounded Rubyist", author: "David A. Black" },
  { title: "Practical Object Oriented Design: An Agile Primer Using Ruby",
    author: "Sandi Metz" },
  { title: "Eloquent Ruby", author: "Russ Olsen" },
  { title: "Metaprogramming in Ruby", author: "Paolo Perrota"}])
