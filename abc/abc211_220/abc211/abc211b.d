import std;

void main() {
    auto S = new string[](4);
    foreach (i; 0 .. 4)
        S[i] = readln.chomp;

    S.sort;

    bool isOK = (S.uniq.array.length == 4);
    writeln(isOK ? "Yes" : "No");
}
