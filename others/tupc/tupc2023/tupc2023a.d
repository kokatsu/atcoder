import std;

enum L = 2 * 10 ^^ 5 + 1;

struct City {
    long x, y, p;
}

void main() {
    long N;
    readf("%d\n", N);

    auto xp = new long[](L), yp = new long[](L);
    auto cities = new City[](N);
    foreach (i; 0 .. N) {
        long x, y, p;
        readf("%d %d %d\n", x, y, p);

        xp[x] += p, yp[y] += p;
        cities[i] = City(x, y, p);
    }

    long res;
    foreach (city; cities) {
        res = max(res, xp[city.x]+yp[city.y]-city.p);
    }

    res.writeln;
}