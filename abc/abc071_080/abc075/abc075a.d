import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    writeln(A[0] == A[1] ? A[2] : A[0]);
}