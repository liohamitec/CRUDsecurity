package net.mysite.crudsecurity.controller;


import net.mysite.crudsecurity.model.Developer;
import net.mysite.crudsecurity.model.Skill;
import net.mysite.crudsecurity.service.data.DeveloperService;
import net.mysite.crudsecurity.service.data.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DataController {
        @Autowired
        private DeveloperService developerService;

        @Autowired
        private SkillService skillService;

        @RequestMapping(value = "/developers", method = RequestMethod.GET)
        public String getAllDevelopers(Model model) {
            model.addAttribute("developer", new Developer());
            model.addAttribute("developersList", developerService.getAll());

            return "developers";
        }

        @RequestMapping(value = "/updateDeveloper", method = RequestMethod.POST)
        public String updateDeveloper(@ModelAttribute("developer") Developer dev) {
            developerService.update(dev);

            return "redirect:/developers";
        }

        @RequestMapping(value = "/deleteDeveloper", method = RequestMethod.POST)
        public String deleteDeveloper(@ModelAttribute("developer") Developer dev) {
            developerService.remove(dev.getId());

            return "redirect:/developers";
        }

        @RequestMapping(value = "/skills", method = RequestMethod.GET)
        public String getAllSkills(Model model) {
            model.addAttribute("skill", new Skill());
            model.addAttribute("skillsList", skillService.getAll());

            return "skills";
        }

        @RequestMapping(value = "/updateSkill", method = RequestMethod.POST)
        public String updateSkill(@ModelAttribute("skill") Skill skill) {
            skillService.update(skill);

            return "redirect:/skills";
        }

        @RequestMapping(value = "/deleteSkill", method = RequestMethod.POST)
        public String deleteSkill(@ModelAttribute("skill") Skill skill) {
            skillService.remove(skill.getId());

            return "redirect:/skills";
        }
}
