import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sum;
    writeln(S >= 22 ? "bust" : "win");
}