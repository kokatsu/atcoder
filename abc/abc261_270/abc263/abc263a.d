import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    bool isOK;
    isOK |= (A[0] == A[1] && A[1] == A[2] && A[2] != A[3] && A[3] == A[4]);
    isOK |= (A[0] == A[1] && A[1] != A[2] && A[2] == A[3] && A[3] == A[4]);

    writeln(isOK ? "Yes" : "No");
}