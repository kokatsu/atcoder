import std;

const string COLOR = "WBR";

void main() {
    int N;
    dchar C;
    string A;
    readf("%d %c\n%s\n", N, C, A);

    int num;
    foreach (a; A) {
        foreach (i, c; COLOR) {
            if (a == c)
                num += i;
        }
    }

    writeln(COLOR[num % 3] == C ? "Yes" : "No");
}
