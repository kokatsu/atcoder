import std;

void main() {
    int N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    auto C = new bool[int][](N + 1);
    auto A = new bool[](N + 1);
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            C[query[1]][query[2]] = true;
        }
        else if (query[0] == 2) {
            A[query[1]] = true;
        }
        else {
            string res = query[2] in C[query[1]] || A[query[1]] ? "Yes" : "No";
            res.writeln;
        }
    }
}
