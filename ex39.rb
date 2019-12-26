# Hashmap (or "hash") is a way to store data like a list but instead of using only numbers to get the data you can use almost anything.

?> things = ['a', 'b', 'c', 'd']
=> ["a", "b", "c", "d"]
>> puts things[1]
b
=> nil
>> things[1] = 'z'
=> "z"
>> puts things[1]
z
=> nil
>> things
=> ["a", "z", "c", "d"]

# exchanged the value at index 1 -> only numbers can be used to find value at index
# hash lets you use anything as your index
# i.e.
    ?> stuff = {'name' => 'Zed', 'age', => 39, 'height' => 6 * 12 + 2}
    => {"name" =>"Zed", "age" =>39, "height"=>74}
    >> puts stuff['name']
    Zed
    => nil
    >> puts stuff['age']
    39
    => nil
    >> puts stuff['height']
    74
    => nil
    >> stuff['city'] = "San Francisco"
    => "San Francisco"
    >> print stuff['city']
    San Francisco => nil

    # also can do
        ?> stuff[1] = "wow"
        => "wow"
        >> stuff[2] = "neato"
        => "neato"
        >> puts stuff[1]
        wow
        => nil
        >> puts stuff[2]
        neato
        => nil
        >> stuff
        => {"name"=>"Zed", "age"=>39, "height"=>74, "city"=>"San Francisco", 1=>"wow", 2=>"neato"}
    # and....
        ?> stuff.delete('city')
        => "San Francisco"
        >> stuff.delete(1)
        => "wow"
        >> stuff.delete(2)
        => "neato"
        >> stuff
        => {"name"=>"Zed", "age"=>39, "height"=>74}
