import std;

void main() {
    auto C = readln.chomp;

    bool isWon = true;
    auto len = C.length;
    foreach (i; 1 .. len) {
        isWon &= (C[i - 1] == C[i]);
    }

    writeln(isWon ? "Won" : "Lost");
}
