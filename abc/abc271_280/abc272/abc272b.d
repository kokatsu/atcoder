import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto list = new bool[][](N, N);
    foreach (_; 0 .. M) {
        auto input = readln.chomp.split.to!(int[]);

        input.popFront;
        input[] -= 1;

        foreach (x; input) {
            foreach (y; input) {
                list[x][y] = list[y][x] = true;
            }
        }
    }

    bool isOK = true;
    foreach (i; 0 .. N) {
        isOK &= list[i].all;
    }

    writeln(isOK ? "Yes" : "No");
}
