import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int b = A[1];

    A.sort;

    writeln(A[1] == b ? "Yes" : "No");
}
