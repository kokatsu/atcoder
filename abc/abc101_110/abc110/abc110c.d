import std;

void main() {
    auto S = readln.chomp;
    auto T = readln.chomp;

    auto trans = new bool[][](26, 26);
    foreach (s, t; zip(S, T)) {
        trans[s-'a'][t-'a'] = true;
    }

    bool isOK = true;
    foreach (i; 0 .. 26) {
        int row, col;
        foreach (j; 0 .. 26) {
            if (trans[i][j]) ++row;
            if (trans[j][i]) ++col;
        }

        isOK &= ((row <= 1) && (col <= 1));
    }

    writeln(isOK ? "Yes" : "No");
}