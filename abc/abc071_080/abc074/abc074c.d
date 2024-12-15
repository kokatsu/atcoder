import std;

void main() {
    int A, B, C, D, E, F;
    readf("%d %d %d %d %d %d\n", A, B, C, D, E, F);

    int x, y;
    real mx = -1.0;

    int alim = F / A, blim = F / B;
    foreach (i; 0 .. alim + 1) {
        foreach (j; 0 .. blim + 1) {
            int water = (A * i + B * j) * 100;

            if (water == 0)
                continue;
            if (water > F)
                break;

            int diff = F - water;
            int clim = diff / C, dlim = diff / D;

            foreach (k; 0 .. clim + 1) {
                foreach (l; 0 .. dlim + 1) {
                    int sugar = C * k + D * l;
                    if (water + sugar > F)
                        break;

                    real sw = 100.0 * sugar / (water + sugar);
                    if (mx < sw && sugar <= water / 100 * E) {
                        x = water + sugar, y = sugar;
                        mx = sw;
                    }
                }
            }
        }
    }

    writeln(x, " ", y);
}
