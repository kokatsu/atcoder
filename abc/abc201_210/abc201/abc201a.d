import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    bool isOK;
    foreach (x; A.permutations) {
        isOK |= (x[0] + x[2] == x[1] * 2);
    }

    writeln(isOK ? "Yes" : "No");
}