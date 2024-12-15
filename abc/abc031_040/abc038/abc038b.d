import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    bool isOK;
    foreach (p; A.permutations) {
        foreach (q; B.permutations) {
            isOK |= (p[0] == q[0]);
        }
    }

    writeln(isOK ? "YES" : "NO");
}
