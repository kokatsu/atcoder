import std;

void main() {
    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        string res = solve();
        res.writeln;
    }
}

string solve() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);
    auto T = readln.chomp.to!(dchar[]);

    int index = 0;
    while (index < N) {
        if (S[index] == T[index]) {
            ++index;
        }
        else {
            if (index < N - 3 && S[index .. index + 4] == "TIOT"
                    && (T[index .. index + 4] == "ISCT" || T[index .. index + 4] == "ISCI")) {
                S[index .. index + 4] = "ISCT";
            }
            else {
                break;
            }
        }
    }

    return S == T ? "Yes" : "No";
}
