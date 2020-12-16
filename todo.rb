class ToDo
    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
        puts "【追加】[No.#{task.id}] #{task.title}:#{task.content}"
    end

    def info
        puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
        if @tasks.empty?
            puts "【！】 タスクはありません。"
        else
            @tasks.each do |task|
                puts "[No.#{task.id}] #{task.title}:#{task.content}"
            end
        end
        puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end

        def delete(task_id)
            if @tasks.include?(task_id)
            puts "【削除】 [No.#{task_id.id}] #{task_id.title}:#{task_id.content}"
            @tasks.delete(task_id)
            else
                puts "【！】 該当idのタスクはありません。"
            end
        end
end