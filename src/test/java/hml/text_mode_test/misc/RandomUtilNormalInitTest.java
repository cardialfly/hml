package hml.text_mode_test.misc;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import edu.cmu.tetrad.util.RandomUtil;

/**
 * A smoke test for {@link RandomUtil} and
 * {@link org.apache.commons.math3.distribution.NormalDistribution} at
 * {@link RandomUtil#setSeed(long)}
 * 
 * @author Shou Matsumoto
 */
public class RandomUtilNormalInitTest {

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	 * Test method for {@link edu.cmu.tetrad.util.RandomUtil#getInstance()}.
	 */
	@Test
	public final void testGetInstance() {
		// create random seed
		long seed = System.currentTimeMillis();
		System.out.println("Seed = " + seed);

		// smoke test for initialization of this class
		RandomUtil rand = RandomUtil.getInstance();
		assertNotNull("Seed = " + seed, rand);
		rand.setSeed(seed);

		// make sure it can create a uniform sample
		double param1 = 1;
		double param2 = 3;
		double sample = rand.nextUniform(param1, param2);
		assertFalse("Seed = " + seed, Double.isNaN(sample));
		assertTrue("Seed = " + seed, sample >= param1);
		assertTrue("Seed = " + seed, sample <= param2);
		
		// make sure it can create a normal sample
		sample = rand.nextNormal(param1, param2);
		assertFalse("Seed = " + seed, Double.isNaN(sample));
		assertFalse("Seed = " + seed, Double.isInfinite(sample));
	}

}
