import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto X = new real[](N), Y = new real[](N);
    foreach (i; 0 .. N) {
        readf("%f %f\n", X[i], Y[i]);
    }

    auto infected = new bool[](N);
    infected[0] = true;

    int[] queue;
    queue ~= 0;

    while (queue.length) {
        int f = queue.front;
        queue.popFront;

        foreach (i; 0 .. N) {
            if (infected[i]) {
                continue;
            }

            if (hypot(X[f] - X[i], Y[f] - Y[i]) <= D) {
                infected[i] = true;
                queue ~= i;
            }
        }
    }

    string res = infected.map!(x => x ? "Yes" : "No").join("\n");
    res.writeln;
}
