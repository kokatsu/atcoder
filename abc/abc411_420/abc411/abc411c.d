import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    auto squares = new int[](N + 2);
    foreach (a; A) {
        squares[a] = squares[a] ^ 1;

        bool left = squares[a - 1] == squares[a];
        bool right = squares[a] == squares[a + 1];

        if (left && right) {
            --res;
        }
        else if (!left && !right) {
            ++res;
        }

        res.writeln;
    }
}
