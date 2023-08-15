import re
import subprocess

def update_gradle_properties(): 
    print("Updating gradle properties...")
    pattern = "if\(hasProperty\('target'\) && target == 'android'\) \{([\s\S]*?)\} else \{([\s\S]*?)(?=\s*dependencies\s*\{)"

    replacement_path = '../../template/publish-template.gradle'
    with open(replacement_path, 'r') as replacement_file:
        replacement = replacement_file.read()

    file_path = "./build.gradle"

    with open(file_path, 'r') as file:
        content = file.read()
        modified_content = re.sub(pattern, replacement, content, flags=re.DOTALL)

    modified_content = re.sub('compile ', 'implementation ', modified_content)
    modified_content = re.sub('testCompile ', 'testImplementation ', modified_content)

    with open(file_path, 'w') as file:
        file.write(modified_content)

def update_gradle_version():
    print("Updating gradle version...")
    subprocess.run("gradle wrapper --gradle-version 8.0", shell=True)

update_gradle_version()
update_gradle_properties()