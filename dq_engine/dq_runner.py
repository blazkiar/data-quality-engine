from pathlib import Path
import yaml

BASE_DIR = Path(__file__).parent
CONFIG_PATH = BASE_DIR / "config.yaml"

def load_config():
    with open(CONFIG_PATH) as f:
        return yaml.safe_load(f)

def list_rules(config):
    tasks = []
    for table in config["tables"]:
        if table.get("enabled"):
            for rule in table["rules"]:
                tasks.append((table["name"], rule))
    return tasks

def main():
    print("Data quality rules to execute:")
    for table, rule in list_rules(load_config()):
        print(f"  table={table}  rule={rule}")

if __name__ == "__main__":
    main()
