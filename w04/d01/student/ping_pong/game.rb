module PingPong
  class Game

    @@state = nil
    @@difficulty = :medium

    def self.state
      @@state
    end

    def self.difficulty
      @@difficulty
    end

    def self.difficulty=(x)
      @@difficulty = x
    end

    def self.player_has_served?
      @@state != nil
    end

    def self.computer_has_hit?
      is_ping? || is_pong?
    end

    def self.is_ping?
      @@state == :ping
    end

    def self.is_pong?
      @@state == :pong
    end

    def self.serve!
      @@state = :served
      true
    end

    def self.miss?
      chance =
      if difficulty == :easy
        difficulty = 0.5
      elsif difficulty == :medium
        difficulty = 0.33
      else difficulty ==  :hard
        difficulty = 0.25
      end

      rand < chance
    end

    def self.hit!
      if miss?
        @@state = nil
        return false
      end

      @@state = (rand < 0.5) ? :ping : :pong
    end

    def self.ping!
      if is_ping?
        @@state = :served
        true
      else
        @@state = nil
        false
      end
    end

    def self.pong!
      if is_pong?
        @@state = :served
        true
      else
        @@state = nil
        false
      end
    end

    def self.end!
      @@state = nil
    end

  end
end
