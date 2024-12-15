import std;

void main() {
    string S = readln.chomp;
    string T = readln.chomp;

    bool isOK;
    foreach (i; 0 .. 26) {
        bool flag = true;

        foreach (j, s; S) {
            dchar d = ((((s - 'a') + i) % 26) + 'a').to!dchar;

            if (d != T[j]) {
                flag = false;
                break;
            }
        }

        if (flag) {
            isOK = true;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
