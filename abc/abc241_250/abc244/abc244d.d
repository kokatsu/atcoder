import std;

void main() {
    auto S = readln.chomp.split;

    auto T = readln.chomp.split;

    int cnt;
    foreach (i; 0 .. 3) {
        if (S[i] == T[i])
            ++cnt;
    }

    writeln((cnt == 0 || cnt == 3) ? "Yes" : "No");
}
