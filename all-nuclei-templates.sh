#!/bin/bash

# Define the list of GitHub repository URLs
repositories=(
    https://github.com/projectdiscovery/nuclei-templates
    https://github.com/0xAwali/Virtual-Host
    https://github.com/0xPugazh/my-nuclei-templates
    https://github.com/0xmaximus/final_freaking_nuclei_templates
    https://github.com/1in9e/my-nuclei-templates
    https://github.com/5cr1pt/templates
    https://github.com/ARPSyndicate/kenzer-templates
    https://github.com/Akokonunes/Private-Nuclei-Templates
    https://github.com/Arvinthksrct/alltemplate
    https://github.com/CharanRayudu/Custom-Nuclei-Templates
    https://github.com/DoubleTakes/nuclei-templates
    https://github.com/Elsfa7-110/mynuclei-templates
    https://github.com/ExpLangcn/NucleiTP
    https://github.com/Harish4948/Nuclei-Templates
    https://github.com/Hunt2behunter/nuclei-templates
    https://github.com/Jagomeiister/nuclei-templates
    https://github.com/JoshMorrison99/url-based-nuclei-templates
    https://github.com/Kaue-Navarro/Templates-kaue-nuclei
    https://github.com/KeepHowling/all_freaking_nuclei_templates
    https://github.com/Lopseg/nuclei-c-templates
    https://github.com/MR-pentestGuy/nuclei-templates
    https://github.com/NightRang3r/misc_nuclei_templates
    https://github.com/NitinYadav00/My-Nuclei-Templates
    https://github.com/Odayex/Random-Nuclei-Templates
    https://github.com/PedroFerreira97/nuclei_templates
    https://github.com/R-s0n/Custom_Vuln_Scan_Templates
    https://github.com/Saimonkabir/Nuclei-Templates
    https://github.com/Saptak9983/Nuclei-Template
    https://github.com/ShangRui-hash/my-nuclei-templates
    https://github.com/freakyclown/Nuclei_templates
    https://github.com/SirAppSec/nuclei-template-generator-log4j
    https://github.com/Str1am/my-nuclei-templates
    https://github.com/SumedhDawadi/Custom-Nuclei-Template
    https://github.com/System00-Security/backflow
    https://github.com/adampielak/nuclei-templates
    https://github.com/aels/CVE-2022-37042
    https://github.com/alexrydzak/rydzak-nuclei-templates
    https://github.com/ayadim/Nuclei-bug-hunter
    https://github.com/badboy-sft/badboy_17-Nuclei-Templates-Collection
    https://github.com/binod235/nuclei-templates-and-reports
    https://github.com/blazeinfosec/nuclei-templates
    https://github.com/brinhosa/brinhosa-nuclei-templates
    https://github.com/c-sh0/nuclei_templates
    https://github.com/cipher387/juicyinfo-nuclei-templates
    https://github.com/clarkvoss/Nuclei-Templates
    https://github.com/coldrainh/nuclei-ByMyself
    https://github.com/d3sca/Nuclei_Templates
    https://github.com/daffainfo/my-nuclei-templates
    https://github.com/damon-sec/Nuclei-templates-Collection
    https://github.com/dk4trin/templates-nuclei
    https://github.com/drfabiocastro/certwatcher-templates
    https://github.com/ekinsb/Nuclei-Templates
    https://github.com/erickfernandox/nuclei-templates
    https://github.com/esetal/nuclei-bb-templates
    https://github.com/ethicalhackingplayground/erebus-templates
    https://github.com/geeknik/nuclei-templates-1
    https://github.com/geeknik/the-nuclei-templates
    https://github.com/glyptho/templatesallnuclei
    https://github.com/im403/nuclei-temp
    https://github.com/javaongsan/nuclei-templates
    https://github.com/justmumu/SpringShell
    https://github.com/kabilan1290/templates
    https://github.com/kh4sh3i/CVE-2022-23131
    https://github.com/luck-ying/Library-YAML-POC
    https://github.com/mastersir-lab/nuclei-yaml-poc
    https://github.com/mbskter/Masscan2Httpx2Nuclei-Xray
    https://github.com/medbsq/ncl
    https://github.com/meme-lord/Custom-Nuclei-Templates
    https://github.com/n1f2c3/mytemplates
    https://github.com/notnotnotveg/nuclei-custom-templates
    https://github.com/obreinx/nuceli-templates
    https://github.com/optiv/mobile-nuclei-templates
    https://github.com/p0ch4t/nuclei-special-templates
    https://github.com/panch0r3d/nuclei-templates
    https://github.com/peanuth8r/Nuclei_Templates
    https://github.com/pentest-dev/Profesional-Nuclei-Templates
    https://github.com/pikpikcu/nuclei-templates
    https://github.com/ping-0day/templates
    https://github.com/praetorian-inc/chariot-launch-nuclei-templates
    https://github.com/ptyspawnbinbash/template-enhancer
    https://github.com/rafaelcaria/Nuclei-Templates
    https://github.com/rafaelwdornelas/my-nuclei-templates
    https://github.com/rahulkadavil/nuclei-templates
    https://github.com/randomstr1ng/nuclei-sap-templates
    https://github.com/redteambrasil/nuclei-templates
    https://github.com/ree4pwn/my-nuclei-templates
    https://github.com/ricardomaia/nuclei-template-generator-for-wordpress-plugins
    https://github.com/sadnansakin/my-nuclei-templates
    https://github.com/securitytest3r/nuclei_templates_work
    https://github.com/sharathkramadas/k8s-nuclei-templates
    https://github.com/shifa123/detections
    https://github.com/sl4x0/NC-Templates
    https://github.com/smaranchand/nuclei-templates
    https://github.com/soapffz/myown-nuclei-poc
    https://github.com/soumya123raj/Nuclei
    https://github.com/souzomain/mytemplates
    https://github.com/tamimhasan404/Open-Source-Nuclei-Templates-Downloader
    https://github.com/test502git/log4j-fuzz-head-poc
    https://github.com/th3r4id/nuclei-templates
    https://github.com/thebrnwal/Content-Injection-Nuclei-Script
    https://github.com/thecyberneh/nuclei-templatess
    https://github.com/thelabda/nuclei-templates
    https://github.com/themoonbaba/private_templates
    https://github.com/rix4uni/BugBountyTips
    https://github.com/Lu3ky13/Authorization-Nuclei-Templates
    https://github.com/bug-vs-me/nuclei
    https://github.com/topscoder/nuclei-wordfence-cve
    https://github.com/toramanemre/apache-solr-log4j-CVE-2021-44228
    https://github.com/toramanemre/log4j-rce-detect-waf-bypass
    https://github.com/trickest/log4j
    https://github.com/wasp76b/nuclei-templates
    https://github.com/wr00t/templates
    https://github.com/xinZa1/template
    https://github.com/yarovit-developer/nuclei-templates
    https://github.com/yavolo/nuclei-templates
    https://github.com/z3bd/nuclei-templates
    https://github.com/zer0yu/Open-PoC
    https://github.com/pikpikcu/my-nuclei-templates
    https://github.com/SirBugs/Priv8-Nuclei-Templates
)

# Create the templates directory if it doesn't exist
mkdir -p templates

# Loop through the repositories and clone them into the templates directory
for repo in "${repositories[@]}"; do
    # Extract the repository name from the URL
    repo_name=$(basename $repo)
    
    # Check if a directory with the same name already exists
    if [ -d "templates/$repo_name" ]; then
        suffix=2
        while [ -d "templates/${repo_name}${suffix}" ]; do
            ((suffix++))
        done
        repo_name="${repo_name}${suffix}"
    fi

    # Clone the repository into the templates directory
    git clone $repo.git "templates/$repo_name"
    
    # Check if the clone was successful
    if [ $? -eq 0 ]; then
        echo "Cloned $repo_name successfully."
    else
        echo "Failed to clone $repo_name."
    fi
done

# Done
echo "All repositories cloned into the templates directory."
