 ## STEPS FOR BUILDING WITH OOP ##

    # 1) Write or draw about the problem
    # 2) Extract key concepts from 1 and research them
    # 3) Create a class hierarchy and object map for the concepts
    # 4) Code the classes and test to run them
    # 5) Repeat and refine

  # When pulling out the key concept from your thoughts on the problem, make a list of all the nouns and verbs and then write about hwow they are related
      # this gives a good list of names for classes, objects, and functions; then research these concepts (any you don't get) so as to refine
  # In creating the outline/tree you typically take the nouns and ask if they are related to one another, if so that means they have a common parent class.
      # then take the verbs and see if those are function names for each class and add them to the tree
  # With the tree done, write a "skeleton" code that has just classes and their functions (nothing else). Test this to make sure it's correct.
  # Repeat this process, and do it on a small scale for any problems you run in to.



### ANALYSIS OF A SIMPLE GAME ENGINE ###

        # Name: "Gothons from Planet Percal #25"
                # Small space adventure

        # 1) * He writes a paragraph giving a bit of plot and basic ideas of how the game will run i.e. an engine that runs a map full of rooms or scenes
            # Describe each scene
        # 2) List of nouns
              # can also make a list of verbs
        # 3) Research things like: technical issues, similar game types, concepts to make the game more realistic (i.e. the layout of a ship)
        # 4) Create Class hierarchy and Object Map
              # looking not only for what is similar but also for which words are interchangeable and then pick the best one for what you're doing
                  # Example (in text editor)
                          * Map # classes
                              - next_scene # actions
                              - opening_scene
                          * Engine
                              - play
                          * Scene
                              - enter
                              * Death
                              * Central Corrigdor
                              * Laser Weapon Armory
                              * The Bridge
                              * Escape Pod
        # 5) Skeleton Code
                  class Scene
                    def enter()
                    end
                  end

                  class Engine

                    def initialize(scene_map)
                    end

                    def play ()
                    end
                  end

                  class Death < Scene

                    def enter()
                    end
                  end

                  class LaserWeaponArmory < Scene

                    def enter()
                    end
                  end

                  class EscapePod < Scene

                    def enter()
                    end
                  end

                  class Map

                    def initialize( start_scene)
                    end

                    def next_scene( scene_name)
                    end

                    def opening_scene()
                    end
                  end

                  a_map = Map.new('central_corrigdor')
                  a_game = Engine.new(a_map)
                  a_game.play()


# ENGINES #
    # --> miniature applications that provide functionality to their host applications
    # --> very similar to applications and plugins
