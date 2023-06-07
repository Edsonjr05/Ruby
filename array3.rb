star_wars = []

star_wars.push("Ep IV")
star_wars.push("Ep V")
star_wars.push("Ep VI")
puts star_wars.join(", ")

star_wars.insert(0, "Ep I")
star_wars.insert(0, "Ep II")
star_wars.insert(0, "Ep III")
puts star_wars.join(", ")

star_wars.push("Ep VII")
star_wars.insert(3, "Rougue One")
puts star_wars.join(", ")
