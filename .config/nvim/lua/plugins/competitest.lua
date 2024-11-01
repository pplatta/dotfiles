return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        received_files_extension = "cpp",
        received_problems_path = "$(CWD)/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)",
        received_problems_prompt_path = false,
        --received_contests_directory = "$(CWD)",
        --received_contests_problems_path = "$(PROBLEM).$(FEXT)",
        --received_contests_prompt_directory = true,
        --received_contests_prompt_extension = true,
        template_file = {
          cpp = "~/workspace/Competitive-programming/template.cpp",
        },
        compile_command = {
          cpp = {
            exec = "g++",
            args = {
              "-Wall",
              "$(FNAME)",
              "-o",
              "$(FNOEXT)",
              "-I/home/mirimax/workspace/Competitive-programming",
              "-std=c++20",
            },
          },
        },
        run_command = {
          cpp = { exec = "./$(FNOEXT)" },
        },
      })
    end,
  },
}
