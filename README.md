# VMess IP Changer

This Bash script allows you to update the "add" value in a VMess JSON configuration and generate an updated VMess URL.

## Prerequisites

- Bash shell
- `jq` (a lightweight and flexible command-line JSON processor)
- `base64` utility

You can install `jq` and `base64` using package managers like `apt`, `brew`, or others depending on your operating system.

## Usage

1. Clone this repository or download the `vmess-json-updater.sh` script.

2. Open a terminal and navigate to the directory where the script is located.

3. Make the script executable if it's not already:

    ```bash
    chmod +x vmess-json-updater.sh
    ```

4. Run the script:

    ```bash
    ./vmess-json-updater.sh
    ```

5. Follow the prompts:
   - Enter the original VMess URL.
   - Enter the new "add" value (string) that you want to replace the existing one with.

6. The script will display the current VMess JSON and the updated VMess URL with the new "add" value.

7. You can copy the updated VMess URL and use it as needed.

## Example JSON Structure

For reference, here's an example of the JSON structure that the script works with:

```json
{
  "v": "",
  "ps": "",
  "add": "",
  "port": ,
  "id": "",
  "aid": 0,
  "net": "",
  "type": "",
  "host": "",
  "path": "/",
  "tls": "",
  "sni": "",
  "fp": "",
  "alpn": "",
  "allowInsecure": 
}
