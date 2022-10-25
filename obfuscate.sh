#! /bin/bash
loader='#! /bin/bash
source <(gzip -c -d <(tail -n+"$((LINENO + 2))" "$BASH_SOURCE"));
status="$?"; return "$status" 2> /dev/null || exit "$status"
'
for original; do
        obfuscated="$original-obfuscated.sh"
        gzip -c "$original" | cat <(printf %s "$loader") - > "$obfuscated"
        chmod u+x "$obfuscated"
done
