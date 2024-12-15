import std;

void main() {
    int N;
    readf("%d\n", N);

    bool isOK;

    auto S = new string[](N), T = new string[](N);
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split;
        S[i] = input[0], T[i] = input[1];

        foreach (j; 0 .. i - 1) {
            isOK |= (S[i] == S[j] && T[i] == T[j]);
        }
    }

    writeln(isOK ? "Yes" : "No");
}
